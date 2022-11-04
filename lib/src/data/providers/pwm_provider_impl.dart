import 'dart:io';

import 'package:bboiler/src/domain/providers/pwm_provider.dart';
import 'package:dart_periphery/dart_periphery.dart';

class PwmProviderImpl extends PwmProvider {
  int _pin;
  late PWM _pwm;
  double power = 1;

  PwmProviderImpl({required int pin}) : _pin = pin {
    if (Platform.isLinux) {
      int chip = 0;
      if (_pin == 12 || _pin == 18) {
        chip = 0;
      } else if (_pin == 13 || _pin == 19) {
        chip = 1;
      }

      _pwm = PWM(chip, _pin);
      _pwm.setFrequency(100.0);
      _pwm.setDutyCycle(0.0);
      _pwm.enable();
    }
  }

  @override
  void dispose() {
    if (Platform.isLinux) {
      _pwm.disable();
      _pwm.dispose();
    }
  }

  @override
  double getPower() {
    if (Platform.isLinux) {
      power = _pwm.getDutyCycle();
    }

    return power;
  }

  @override
  void setPower(double power) {
    if (Platform.isLinux) {
      _pwm.setDutyCycle(power);
      this.power = getPower();
    } else {
      this.power = power;
    }
  }

  @override
  void changePin(int pin) {
    _pin = pin;
    if (Platform.isLinux) {
      _pwm.disable();
      _pwm.dispose();

      int chip = 0;
      if (_pin == 12 || _pin == 18) {
        chip = 0;
      } else if (_pin == 13 || _pin == 19) {
        chip = 1;
      }
      _pwm = PWM(chip, _pin);
      _pwm.setFrequency(100.0);
      _pwm.setDutyCycle(0.0);
      _pwm.enable();
    }
  }

  @override
  int getPin() {
    return _pin;
  }
}
