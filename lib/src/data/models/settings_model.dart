import 'package:bboiler/src/data/models/hop_model.dart';
import 'package:bboiler/src/data/models/pause_model.dart';
import 'package:bboiler/src/domain/enitites/settings_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
class SettingsModel extends SettingsEntity with _$SettingsModel {
  const factory SettingsModel({
    required double tempMalt,
    required double tempMashOut,
    required double tempBoiling,
    required double tempDiff,
    required int timeMeshout,
    required int timeBoiling,
    required List<PauseModel> pauses,
    required List<HopModel> hops,
    required int tenPin,
    required int pumpPin,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) => _$SettingsModelFromJson(json);

  factory SettingsModel.fromEntity(SettingsEntity entity) => SettingsModel(
        tempMalt: entity.tempMalt,
        tempMashOut: entity.tempMashOut,
        tempBoiling: entity.tempBoiling,
        tempDiff: entity.tempDiff,
        timeMeshout: entity.timeMeshout,
        timeBoiling: entity.timeBoiling,
        pauses: entity.pauses.map((item) => PauseModel.fromEntity(item)).toList(),
        hops: entity.hops.map((item) => HopModel.fromEntity(item)).toList(),
        tenPin: entity.tenPin,
        pumpPin: entity.pumpPin,
      );
}
