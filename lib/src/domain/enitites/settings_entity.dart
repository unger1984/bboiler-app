import 'package:bboiler/src/domain/enitites/hop_entity.dart';
import 'package:bboiler/src/domain/enitites/pause_entity.dart';

class SettingsEntity {
  final double tempMalt;
  final double tempMashOut;
  final double tempBoiling;
  final double tempDiff;
  final int timeMeshout;
  final int timeBoiling;
  final List<PauseEntity> pauses;
  final List<HopEntity> hops;
  final int tenPin;
  final int pumpPin;
  final int pwmPin;

  const SettingsEntity({
    required this.tempMalt,
    required this.tempMashOut,
    required this.tempBoiling,
    required this.tempDiff,
    required this.timeMeshout,
    required this.timeBoiling,
    required this.pauses,
    required this.hops,
    required this.tenPin,
    required this.pumpPin,
    required this.pwmPin,
  });
}
