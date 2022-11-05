import 'dart:io';

import 'package:bboiler/src/domain/providers/relay_provider.dart';
import 'package:flutter_gpiod/flutter_gpiod.dart';
import 'package:uuid/uuid.dart';

class RelayProviderImpl extends RelayProvider {
  int _pin;
  late GpioLine _gpio;
  bool state = false;
  final uuid = const Uuid();

  RelayProviderImpl({required int pin}) : _pin = pin {
    final chip = FlutterGpiod.instance.chips.singleWhere(
      (chip) => chip.label == 'pinctrl-bcm2711',
      orElse: () => FlutterGpiod.instance.chips.singleWhere((chip) => chip.label == 'pinctrl-bcm2835'),
    );
    _gpio = chip.lines[_pin];
    _gpio.requestOutput(initialValue: false, consumer: 'flutter_gpiod ${uuid.v4()}');
    _gpio.setValue(false);
    state = false;
  }

  @override
  void off() {
    if (Platform.isLinux) {
      _gpio.setValue(false);
    }
    state = false;
  }

  @override
  void on() {
    if (Platform.isLinux) {
      _gpio.setValue(true);
    }
    state = true;
  }

  @override
  bool status() {
    return state;
  }

  @override
  void dispose() {
    _gpio.release();
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
      _gpio.requestOutput(initialValue: false, consumer: 'flutter_gpiod ${uuid.v4()}');
      _gpio.setValue(false);
      state = false;
    }
  }

  @override
  int getPin() {
    return _pin;
  }
}
