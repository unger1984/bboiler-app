// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionModel _$$_SessionModelFromJson(Map<String, dynamic> json) =>
    _$_SessionModel(
      status: $enumDecode(_$SessionStatusEnumMap, json['status']),
      temp: (json['temp'] as List<dynamic>)
          .map((e) => TempModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tempNext: (json['tempNext'] as num).toDouble(),
      timeNext: json['timeNext'] as int,
      waitMin: json['waitMin'] as int,
      pause: json['pause'] as int,
      hop: json['hop'] as int,
      ten: json['ten'] as bool,
      pump: json['pump'] as bool,
      manualTen: json['manualTen'] as bool,
      manualPump: json['manualPump'] as bool,
      timeCurrent: DateTime.parse(json['timeCurrent'] as String),
      timeStart: json['timeStart'] == null
          ? null
          : DateTime.parse(json['timeStart'] as String),
      timeLast: json['timeLast'] == null
          ? null
          : DateTime.parse(json['timeLast'] as String),
    );

Map<String, dynamic> _$$_SessionModelToJson(_$_SessionModel instance) =>
    <String, dynamic>{
      'status': _$SessionStatusEnumMap[instance.status]!,
      'temp': instance.temp,
      'tempNext': instance.tempNext,
      'timeNext': instance.timeNext,
      'waitMin': instance.waitMin,
      'pause': instance.pause,
      'hop': instance.hop,
      'ten': instance.ten,
      'pump': instance.pump,
      'manualTen': instance.manualTen,
      'manualPump': instance.manualPump,
      'timeCurrent': instance.timeCurrent.toIso8601String(),
      'timeStart': instance.timeStart?.toIso8601String(),
      'timeLast': instance.timeLast?.toIso8601String(),
    };

const _$SessionStatusEnumMap = {
  SessionStatus.ready: 'ready',
  SessionStatus.heat: 'heat',
  SessionStatus.malt: 'malt',
  SessionStatus.pause: 'pause',
  SessionStatus.mashOut: 'mashOut',
  SessionStatus.filter: 'filter',
  SessionStatus.boiling: 'boiling',
  SessionStatus.hop: 'hop',
  SessionStatus.done: 'done',
};
