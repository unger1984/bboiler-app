// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsModel _$$_SettingsModelFromJson(Map<String, dynamic> json) =>
    _$_SettingsModel(
      tempMalt: (json['tempMalt'] as num).toDouble(),
      tempMashOut: (json['tempMashOut'] as num).toDouble(),
      tempBoiling: (json['tempBoiling'] as num).toDouble(),
      tempDiff: (json['tempDiff'] as num).toDouble(),
      timeMeshout: json['timeMeshout'] as int,
      timeBoiling: json['timeBoiling'] as int,
      pauses: (json['pauses'] as List<dynamic>)
          .map((e) => PauseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hops: (json['hops'] as List<dynamic>)
          .map((e) => HopModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tenPin: json['tenPin'] as int,
      pumpPin: json['pumpPin'] as int,
    );

Map<String, dynamic> _$$_SettingsModelToJson(_$_SettingsModel instance) =>
    <String, dynamic>{
      'tempMalt': instance.tempMalt,
      'tempMashOut': instance.tempMashOut,
      'tempBoiling': instance.tempBoiling,
      'tempDiff': instance.tempDiff,
      'timeMeshout': instance.timeMeshout,
      'timeBoiling': instance.timeBoiling,
      'pauses': instance.pauses,
      'hops': instance.hops,
      'tenPin': instance.tenPin,
      'pumpPin': instance.pumpPin,
    };
