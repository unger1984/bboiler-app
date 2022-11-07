import 'package:bboiler/src/data/models/temp_model.dart';
import 'package:bboiler/src/domain/enitites/session_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_model.freezed.dart';
part 'session_model.g.dart';

@freezed
class SessionModel extends SessionEntity with _$SessionModel {
  const factory SessionModel({
    required SessionStatus status,
    required List<TempModel> temp,
    required double tempNext,
    required int timeNext,
    required int waitMin,
    required int pause,
    required int hop,
    required bool ten,
    required bool pump,
    required bool manualTen,
    required bool manualPump,
    required DateTime timeCurrent,
    @Default(null) DateTime? timeStart,
    @Default(null) DateTime? timeLast,
  }) = _SessionModel;

  factory SessionModel.fromJson(Map<String, dynamic> json) => _$SessionModelFromJson(json);

  factory SessionModel.fromEntity(SessionEntity entity) => SessionModel(
        status: entity.status,
        temp: entity.temp.map((e) => TempModel.fromEntity(e)).toList(),
        tempNext: entity.tempNext,
        timeNext: entity.timeNext,
        waitMin: entity.waitMin,
        pause: entity.pause,
        hop: entity.hop,
        ten: entity.ten,
        pump: entity.pump,
        manualTen: entity.manualTen,
        manualPump: entity.manualPump,
        timeCurrent: entity.timeCurrent,
        timeStart: entity.timeStart,
        timeLast: entity.timeLast,
      );
}
