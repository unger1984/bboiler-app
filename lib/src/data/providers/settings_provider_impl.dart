import 'dart:convert';
import 'dart:io';

import 'package:bboiler/src/data/models/hop_model.dart';
import 'package:bboiler/src/data/models/pause_model.dart';
import 'package:bboiler/src/data/models/settings_model.dart';
import 'package:bboiler/src/domain/enitites/settings_entity.dart';
import 'package:bboiler/src/domain/providers/settings_provider.dart';
import 'package:path_provider/path_provider.dart';

class SettingsProviderImpl extends SettingsProvider {
  final String _settingsFile = 'bb_settings.json';

  @override
  Future<SettingsEntity> loadSettings() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$_settingsFile');
    try {
      final content = await file.readAsString();

      return SettingsModel.fromJson(jsonDecode(content));
    } catch (exc) {
      return await _newSettings();
    }
  }

  @override
  Future<void> saveSettings(SettingsEntity settings) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/$_settingsFile');
    await file.writeAsString(jsonEncode(SettingsModel.fromEntity(settings).toJson()));
  }

  Future<SettingsEntity> _newSettings() async {
    return const SettingsModel(
      tempMalt: 48,
      tempMashOut: 78,
      tempBoiling: 98,
      tempDiff: 1.5,
      timeMeshout: 5,
      timeBoiling: 60,
      pauses: [PauseModel(temp: 72, time: 60)],
      hops: [HopModel(time: 30)],
      tenPin: 12,
      pumpPin: 13,
      pwmPin: 14,
    );
  }
}
