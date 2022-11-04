import 'package:bboiler/src/domain/providers/pwm_provider.dart';
import 'package:bboiler/src/domain/providers/relay_provider.dart';
import 'package:bboiler/src/domain/providers/temp_provider.dart';

abstract class DeviceRepository {
  abstract final TempProvider temp;
  abstract final RelayProvider ten;
  abstract final RelayProvider pump;
  abstract final PwmProvider tenPower;
}
