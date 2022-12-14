import 'package:bboiler/src/domain/providers/relay_provider.dart';
import 'package:bboiler/src/utils/logger.dart';
import 'package:flutter_gpiod/flutter_gpiod.dart';
import 'package:uuid/uuid.dart';

class RelayProviderImpl extends RelayProvider {
  int _pin;
  late GpioLine _gpio;
  bool state = false;
  final uuid = const Uuid();

  RelayProviderImpl({required int pin}) : _pin = pin {
    try {
      final chip = FlutterGpiod.instance.chips.singleWhere(
        (chip) => chip.label == 'pinctrl-bcm2711',
        orElse: () => FlutterGpiod.instance.chips.singleWhere((chip) => chip.label == 'pinctrl-bcm2835'),
      );
      _gpio = chip.lines[_pin];
      _gpio.requestOutput(initialValue: false, consumer: 'flutter_gpiod ${uuid.v4()}');
      _gpio.setValue(false);
    } catch (exc) {
      logger.e("Relay Error", exc);
    }
    state = false;
  }

  @override
  void off() {
    if (status()) {
      try {
        _gpio.setValue(false);
      } catch (exc) {
        logger.e("Relay Error", exc);
      }
      state = false;
    }
  }

  @override
  void on() {
    if (!status()) {
      try {
        _gpio.setValue(true);
      } catch (exc) {
        logger.e("Relay Error", exc);
      }
      state = true;
    }
  }

  @override
  bool status() {
    return state;
  }

  @override
  void dispose() {
    try {
      _gpio.release();
    } catch (exc) {
      logger.e("Relay Error", exc);
    }
  }

  @override
  void changePin(int pin) {
    _pin = pin;
    try {
      _gpio.setValue(false);
      final chip = FlutterGpiod.instance.chips.singleWhere(
        (chip) => chip.label == 'pinctrl-bcm2711',
        orElse: () => FlutterGpiod.instance.chips.singleWhere((chip) => chip.label == 'pinctrl-bcm2835'),
      );
      _gpio = chip.lines[22];
      _gpio.requestOutput(initialValue: false, consumer: 'flutter_gpiod ${uuid.v4()}');
      _gpio.setValue(false);
    } catch (exc) {
      logger.e("Relay Error", exc);
    }
  }

  @override
  int getPin() {
    return _pin;
  }
}
