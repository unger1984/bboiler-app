import 'dart:io';

import 'package:bboiler/src/domain/providers/relay_provider.dart';
import 'package:dart_periphery/dart_periphery.dart';

class RelayProviderImpl extends RelayProvider {
  int _pin;
  late GPIO _gpio;
  bool state = false;

  RelayProviderImpl({required int pin}) : _pin = pin {
    if (Platform.isLinux) _gpio = GPIO(_pin, GPIOdirection.gpioDirOut);
  }

  @override
  void off() {
    if (Platform.isLinux) {
      _gpio.write(false);
    } else {
      state = false;
    }
  }

  @override
  void on() {
    if (Platform.isLinux) {
      _gpio.write(true);
    } else {
      state = true;
    }
  }

  @override
  bool status() {
    if (Platform.isLinux) state = _gpio.read();

    return state;
  }

  @override
  void dispose() {
    if (Platform.isLinux) {
      _gpio.dispose();
    }
  }

  @override
  void changePin(int pin) {
    if (Platform.isLinux) {
      _gpio.write(false);
      _gpio.dispose();
    }
    _pin = pin;
    if (Platform.isLinux) _gpio = GPIO(_pin, GPIOdirection.gpioDirOut);
  }

  @override
  int getPin() {
    return _pin;
  }
}
