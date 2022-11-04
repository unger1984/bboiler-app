// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionModel _$SessionModelFromJson(Map<String, dynamic> json) {
  return _SessionModel.fromJson(json);
}

/// @nodoc
mixin _$SessionModel {
  SessionStatus get status => throw _privateConstructorUsedError;
  List<TempModel> get temp => throw _privateConstructorUsedError;
  double get tempNext => throw _privateConstructorUsedError;
  int get timeNext => throw _privateConstructorUsedError;
  int get waitMin => throw _privateConstructorUsedError;
  int get pause => throw _privateConstructorUsedError;
  int get hop => throw _privateConstructorUsedError;
  bool get ten => throw _privateConstructorUsedError;
  double get tenPower => throw _privateConstructorUsedError;
  bool get pump => throw _privateConstructorUsedError;
  bool get manualTen => throw _privateConstructorUsedError;
  bool get manualPump => throw _privateConstructorUsedError;
  DateTime get timeCurrent => throw _privateConstructorUsedError;
  DateTime? get timeStart => throw _privateConstructorUsedError;
  DateTime? get timeLast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionModelCopyWith<SessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionModelCopyWith<$Res> {
  factory $SessionModelCopyWith(
          SessionModel value, $Res Function(SessionModel) then) =
      _$SessionModelCopyWithImpl<$Res, SessionModel>;
  @useResult
  $Res call(
      {SessionStatus status,
      List<TempModel> temp,
      double tempNext,
      int timeNext,
      int waitMin,
      int pause,
      int hop,
      bool ten,
      double tenPower,
      bool pump,
      bool manualTen,
      bool manualPump,
      DateTime timeCurrent,
      DateTime? timeStart,
      DateTime? timeLast});
}

/// @nodoc
class _$SessionModelCopyWithImpl<$Res, $Val extends SessionModel>
    implements $SessionModelCopyWith<$Res> {
  _$SessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? temp = null,
    Object? tempNext = null,
    Object? timeNext = null,
    Object? waitMin = null,
    Object? pause = null,
    Object? hop = null,
    Object? ten = null,
    Object? tenPower = null,
    Object? pump = null,
    Object? manualTen = null,
    Object? manualPump = null,
    Object? timeCurrent = null,
    Object? timeStart = freezed,
    Object? timeLast = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as List<TempModel>,
      tempNext: null == tempNext
          ? _value.tempNext
          : tempNext // ignore: cast_nullable_to_non_nullable
              as double,
      timeNext: null == timeNext
          ? _value.timeNext
          : timeNext // ignore: cast_nullable_to_non_nullable
              as int,
      waitMin: null == waitMin
          ? _value.waitMin
          : waitMin // ignore: cast_nullable_to_non_nullable
              as int,
      pause: null == pause
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as int,
      hop: null == hop
          ? _value.hop
          : hop // ignore: cast_nullable_to_non_nullable
              as int,
      ten: null == ten
          ? _value.ten
          : ten // ignore: cast_nullable_to_non_nullable
              as bool,
      tenPower: null == tenPower
          ? _value.tenPower
          : tenPower // ignore: cast_nullable_to_non_nullable
              as double,
      pump: null == pump
          ? _value.pump
          : pump // ignore: cast_nullable_to_non_nullable
              as bool,
      manualTen: null == manualTen
          ? _value.manualTen
          : manualTen // ignore: cast_nullable_to_non_nullable
              as bool,
      manualPump: null == manualPump
          ? _value.manualPump
          : manualPump // ignore: cast_nullable_to_non_nullable
              as bool,
      timeCurrent: null == timeCurrent
          ? _value.timeCurrent
          : timeCurrent // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeStart: freezed == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeLast: freezed == timeLast
          ? _value.timeLast
          : timeLast // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionModelCopyWith<$Res>
    implements $SessionModelCopyWith<$Res> {
  factory _$$_SessionModelCopyWith(
          _$_SessionModel value, $Res Function(_$_SessionModel) then) =
      __$$_SessionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SessionStatus status,
      List<TempModel> temp,
      double tempNext,
      int timeNext,
      int waitMin,
      int pause,
      int hop,
      bool ten,
      double tenPower,
      bool pump,
      bool manualTen,
      bool manualPump,
      DateTime timeCurrent,
      DateTime? timeStart,
      DateTime? timeLast});
}

/// @nodoc
class __$$_SessionModelCopyWithImpl<$Res>
    extends _$SessionModelCopyWithImpl<$Res, _$_SessionModel>
    implements _$$_SessionModelCopyWith<$Res> {
  __$$_SessionModelCopyWithImpl(
      _$_SessionModel _value, $Res Function(_$_SessionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? temp = null,
    Object? tempNext = null,
    Object? timeNext = null,
    Object? waitMin = null,
    Object? pause = null,
    Object? hop = null,
    Object? ten = null,
    Object? tenPower = null,
    Object? pump = null,
    Object? manualTen = null,
    Object? manualPump = null,
    Object? timeCurrent = null,
    Object? timeStart = freezed,
    Object? timeLast = freezed,
  }) {
    return _then(_$_SessionModel(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SessionStatus,
      temp: null == temp
          ? _value._temp
          : temp // ignore: cast_nullable_to_non_nullable
              as List<TempModel>,
      tempNext: null == tempNext
          ? _value.tempNext
          : tempNext // ignore: cast_nullable_to_non_nullable
              as double,
      timeNext: null == timeNext
          ? _value.timeNext
          : timeNext // ignore: cast_nullable_to_non_nullable
              as int,
      waitMin: null == waitMin
          ? _value.waitMin
          : waitMin // ignore: cast_nullable_to_non_nullable
              as int,
      pause: null == pause
          ? _value.pause
          : pause // ignore: cast_nullable_to_non_nullable
              as int,
      hop: null == hop
          ? _value.hop
          : hop // ignore: cast_nullable_to_non_nullable
              as int,
      ten: null == ten
          ? _value.ten
          : ten // ignore: cast_nullable_to_non_nullable
              as bool,
      tenPower: null == tenPower
          ? _value.tenPower
          : tenPower // ignore: cast_nullable_to_non_nullable
              as double,
      pump: null == pump
          ? _value.pump
          : pump // ignore: cast_nullable_to_non_nullable
              as bool,
      manualTen: null == manualTen
          ? _value.manualTen
          : manualTen // ignore: cast_nullable_to_non_nullable
              as bool,
      manualPump: null == manualPump
          ? _value.manualPump
          : manualPump // ignore: cast_nullable_to_non_nullable
              as bool,
      timeCurrent: null == timeCurrent
          ? _value.timeCurrent
          : timeCurrent // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeStart: freezed == timeStart
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeLast: freezed == timeLast
          ? _value.timeLast
          : timeLast // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionModel implements _SessionModel {
  const _$_SessionModel(
      {required this.status,
      required final List<TempModel> temp,
      required this.tempNext,
      required this.timeNext,
      required this.waitMin,
      required this.pause,
      required this.hop,
      required this.ten,
      required this.tenPower,
      required this.pump,
      required this.manualTen,
      required this.manualPump,
      required this.timeCurrent,
      this.timeStart = null,
      this.timeLast = null})
      : _temp = temp;

  factory _$_SessionModel.fromJson(Map<String, dynamic> json) =>
      _$$_SessionModelFromJson(json);

  @override
  final SessionStatus status;
  final List<TempModel> _temp;
  @override
  List<TempModel> get temp {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temp);
  }

  @override
  final double tempNext;
  @override
  final int timeNext;
  @override
  final int waitMin;
  @override
  final int pause;
  @override
  final int hop;
  @override
  final bool ten;
  @override
  final double tenPower;
  @override
  final bool pump;
  @override
  final bool manualTen;
  @override
  final bool manualPump;
  @override
  final DateTime timeCurrent;
  @override
  @JsonKey()
  final DateTime? timeStart;
  @override
  @JsonKey()
  final DateTime? timeLast;

  @override
  String toString() {
    return 'SessionModel(status: $status, temp: $temp, tempNext: $tempNext, timeNext: $timeNext, waitMin: $waitMin, pause: $pause, hop: $hop, ten: $ten, tenPower: $tenPower, pump: $pump, manualTen: $manualTen, manualPump: $manualPump, timeCurrent: $timeCurrent, timeStart: $timeStart, timeLast: $timeLast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionModel &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._temp, _temp) &&
            (identical(other.tempNext, tempNext) ||
                other.tempNext == tempNext) &&
            (identical(other.timeNext, timeNext) ||
                other.timeNext == timeNext) &&
            (identical(other.waitMin, waitMin) || other.waitMin == waitMin) &&
            (identical(other.pause, pause) || other.pause == pause) &&
            (identical(other.hop, hop) || other.hop == hop) &&
            (identical(other.ten, ten) || other.ten == ten) &&
            (identical(other.tenPower, tenPower) ||
                other.tenPower == tenPower) &&
            (identical(other.pump, pump) || other.pump == pump) &&
            (identical(other.manualTen, manualTen) ||
                other.manualTen == manualTen) &&
            (identical(other.manualPump, manualPump) ||
                other.manualPump == manualPump) &&
            (identical(other.timeCurrent, timeCurrent) ||
                other.timeCurrent == timeCurrent) &&
            (identical(other.timeStart, timeStart) ||
                other.timeStart == timeStart) &&
            (identical(other.timeLast, timeLast) ||
                other.timeLast == timeLast));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_temp),
      tempNext,
      timeNext,
      waitMin,
      pause,
      hop,
      ten,
      tenPower,
      pump,
      manualTen,
      manualPump,
      timeCurrent,
      timeStart,
      timeLast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionModelCopyWith<_$_SessionModel> get copyWith =>
      __$$_SessionModelCopyWithImpl<_$_SessionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionModelToJson(
      this,
    );
  }
}

abstract class _SessionModel implements SessionModel {
  const factory _SessionModel(
      {required final SessionStatus status,
      required final List<TempModel> temp,
      required final double tempNext,
      required final int timeNext,
      required final int waitMin,
      required final int pause,
      required final int hop,
      required final bool ten,
      required final double tenPower,
      required final bool pump,
      required final bool manualTen,
      required final bool manualPump,
      required final DateTime timeCurrent,
      final DateTime? timeStart,
      final DateTime? timeLast}) = _$_SessionModel;

  factory _SessionModel.fromJson(Map<String, dynamic> json) =
      _$_SessionModel.fromJson;

  @override
  SessionStatus get status;
  @override
  List<TempModel> get temp;
  @override
  double get tempNext;
  @override
  int get timeNext;
  @override
  int get waitMin;
  @override
  int get pause;
  @override
  int get hop;
  @override
  bool get ten;
  @override
  double get tenPower;
  @override
  bool get pump;
  @override
  bool get manualTen;
  @override
  bool get manualPump;
  @override
  DateTime get timeCurrent;
  @override
  DateTime? get timeStart;
  @override
  DateTime? get timeLast;
  @override
  @JsonKey(ignore: true)
  _$$_SessionModelCopyWith<_$_SessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
