import 'dart:io';

import 'package:bboiler/src/domain/providers/relay_provider.dart';
import 'package:flutter_gpiod/flutter_gpiod.dart';
import 'package:uuid/uuid.dart';

class RelayProviderImpl extends RelayProvider {
  int _pin;
  late GpioLine _gpio;
  bool state = false;
  final uuid = Uuid();

  RelayProviderImpl({required int pin}) : _pin = pin {
    final chip = FlutterGpiod.instance.chips.singleWhere(
      (chip) => chip.label == 'pinctrl-bcm2711',
      orElse: () => FlutterGpiod.instance.chips.singleWhere((chip) => chip.label == 'pinctrl-bcm2835'),
    );
    _gpio = chip.lines[_pin];
    _gpio.requestOutput(initialValue: false, consumer: 'flutter_gpiod ${uuid.v4()}');
  }

  @override
  void off() {
    if (Platform.isLinux) {
      _gpio.setValue(false);
      _gpio.release();
    } else {
      state = false;
    }
  }

  @override
  void on() {
    if (Platform.isLinux) {
      _gpio.setValue(true);
      _gpio.release();
    } else {
      state = true;
    }
  }

  @override
  bool status() {
    if (Platform.isLinux) state = _gpio.getValue();

    return state;
  }

  @override
  void dispose() {
    if (Platform.isLinux) {
      // _gpio.
    }
  }

  @override
  void changePin(int pin) {
    if (Platform.isLinux) {
      _gpio.setValue(false);
      _gpio.release();
    }
    _pin = pin;
    if (Platform.isLinux) {
      final chip = FlutterGpiod.instance.chips.singleWhere(
        (chip) => chip.label == 'pinctrl-bcm2711',
        orElse: () => FlutterGpiod.instance.chips.singleWhere((chip) => chip.label == 'pinctrl-bcm2835'),
      );
      _gpio = chip.lines[22];
      _gpio.requestOutput(initialValue: false, consumer: '');
    }
  }

  @override
  int getPin() {
    return _pin;
  }
}
