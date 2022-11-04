import 'package:bboiler/src/domain/enitites/hop_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hop_model.freezed.dart';
part 'hop_model.g.dart';

@freezed
class HopModel extends HopEntity with _$HopModel {
  const factory HopModel({
    required int time,
  }) = _HopModel;

  factory HopModel.fromJson(Map<String, dynamic> json) => _$HopModelFromJson(json);
  factory HopModel.fromEntity(HopEntity entity) => HopModel(time: entity.time);
}
