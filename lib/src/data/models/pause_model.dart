import 'package:bboiler/src/domain/enitites/pause_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pause_model.freezed.dart';
part 'pause_model.g.dart';

@freezed
class PauseModel extends PauseEntity with _$PauseModel {
  const factory PauseModel({
    required double temp,
    required int time,
  }) = _PauseModel;

  factory PauseModel.fromJson(Map<String, dynamic> json) => _$PauseModelFromJson(json);
  factory PauseModel.fromEntity(PauseEntity entity) => PauseModel(temp: entity.temp, time: entity.time);
}
