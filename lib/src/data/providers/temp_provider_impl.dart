import 'dart:io';
import 'dart:math';

import 'package:bboiler/src/domain/enitites/temp_entity.dart';
import 'package:bboiler/src/domain/providers/temp_provider.dart';
import 'package:bboiler/src/utils/logger.dart';
import 'package:path_provider/path_provider.dart';

class TempProviderImpl extends TempProvider {
  final String testFile = 'temp.txt';
  final Random _random = Random();
  List<TempEntity> _prevTemp = [];
  int failCounter = 0;

  @override
  Future<List<TempEntity>> getTemp() async {
    final devices = await _loadDevices();
    final result = <TempEntity>[];
    for (var device in devices) {
      try {
        final temp = await _getTempFromFile(File('/sys/bus/w1/devices/$device/w1_slave'));
        if (temp != null) {
          result.add(TempEntity(name: device, value: temp));
        }
      } catch (exc) {
        logger.e('/sys/bus/w1/devices/$device/w1_slave', exc);
      }
    }
    if (result.isEmpty) {
      if (_prevTemp.isNotEmpty) {
        // Если до этого были показатели.
        if (failCounter <= 2) {
          // Если попыток было меньше трех.
          result.addAll(_prevTemp);
          failCounter++;
        }
      }
      if (result.isEmpty) {
        final directory = await getApplicationDocumentsDirectory();
        final file = File('${directory.path}/$testFile');
        if (!file.existsSync()) {
          await _updateTest(0);
        }
        final temp = await _getTempFromFile(file);
        if (temp != null) {
          result.add(TempEntity(name: 'Test', value: temp));
          await _updateTest(temp);
        }
        failCounter = 0;
        _prevTemp = [];
      }
    } else {
      failCounter = 0;
      _prevTemp = result;
    }

    return result;
  }

  Future<double?> _getTempFromFile(File file) async {
    try {
      final content = await file.readAsString();
      final tempstrings = content.split(RegExp(r'\n')).map((item) => item.trim()).toList();
      if (tempstrings.length > 1) {
        final reg = RegExp(r't=(\d+)');
        final match = reg.firstMatch(tempstrings[1])?.group(0)?.replaceAll(RegExp(r'^t='), '').trim();
        if (match != null) {
          return int.parse(match) / 1000;
        }
      }
    } catch (exc) {
      logger.e('Error reading temp file', exc);
    }

    return null;
  }

  /// Список доступных устройств.
  Future<List<String>> _loadDevices() async {
    final directory = Directory('/sys/bus/w1/devices');
    var list = <String>[];
    try {
      list = directory
          .listSync()
          .whereType<Directory>()
          .map((e) => e.path.split('/').last)
          .where((element) => !RegExp(r'^\.').hasMatch(element))
          .where((element) => RegExp(r'^\d').hasMatch(element))
          // .toList()
          // .map((e) => '/sys/bus/w1/devices/$e/w1_slave')
          .toList();
    } catch (exc) {
      // TODO.
    }

    return list;
  }

  /// Случайное целое число в заданном промежутке.
  int _next(int min, int max) => min + _random.nextInt(max - min);

  /// Генерирует тестовый файл по возрастающей до 100С.
  Future<void> _updateTest(double temp) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$testFile');

    temp = temp >= 100 ? (_next(10000, 15000) / 1000) : (temp * 1000 + _next(500, 1000)) / 1000;

    var content = '7c 01 4b 46 7f ff 04 10 09 : crc=09 YES\n';
    content += '7c 01 4b 46 7f ff 04 10 09 t=${temp * 1000}\n';
    await file.writeAsString(content);
  }
}
