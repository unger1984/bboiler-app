import 'package:bboiler/src/domain/enitites/temp_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'temp_model.freezed.dart';
part 'temp_model.g.dart';

@freezed
class TempModel extends TempEntity with _$TempModel {
  const factory TempModel({
    required String name,
    required double value,
  }) = _TempModel;

  factory TempModel.fromJson(Map<String, dynamic> json) => _$TempModelFromJson(json);
  factory TempModel.fromEntity(TempEntity entity) => TempModel(name: entity.name, value: entity.value);
}
