// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pause_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PauseModel _$PauseModelFromJson(Map<String, dynamic> json) {
  return _PauseModel.fromJson(json);
}

/// @nodoc
mixin _$PauseModel {
  double get temp => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PauseModelCopyWith<PauseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PauseModelCopyWith<$Res> {
  factory $PauseModelCopyWith(
          PauseModel value, $Res Function(PauseModel) then) =
      _$PauseModelCopyWithImpl<$Res, PauseModel>;
  @useResult
  $Res call({double temp, int time});
}

/// @nodoc
class _$PauseModelCopyWithImpl<$Res, $Val extends PauseModel>
    implements $PauseModelCopyWith<$Res> {
  _$PauseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PauseModelCopyWith<$Res>
    implements $PauseModelCopyWith<$Res> {
  factory _$$_PauseModelCopyWith(
          _$_PauseModel value, $Res Function(_$_PauseModel) then) =
      __$$_PauseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double temp, int time});
}

/// @nodoc
class __$$_PauseModelCopyWithImpl<$Res>
    extends _$PauseModelCopyWithImpl<$Res, _$_PauseModel>
    implements _$$_PauseModelCopyWith<$Res> {
  __$$_PauseModelCopyWithImpl(
      _$_PauseModel _value, $Res Function(_$_PauseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? time = null,
  }) {
    return _then(_$_PauseModel(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PauseModel implements _PauseModel {
  const _$_PauseModel({required this.temp, required this.time});

  factory _$_PauseModel.fromJson(Map<String, dynamic> json) =>
      _$$_PauseModelFromJson(json);

  @override
  final double temp;
  @override
  final int time;

  @override
  String toString() {
    return 'PauseModel(temp: $temp, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PauseModel &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PauseModelCopyWith<_$_PauseModel> get copyWith =>
      __$$_PauseModelCopyWithImpl<_$_PauseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PauseModelToJson(
      this,
    );
  }
}

abstract class _PauseModel implements PauseModel {
  const factory _PauseModel(
      {required final double temp, required final int time}) = _$_PauseModel;

  factory _PauseModel.fromJson(Map<String, dynamic> json) =
      _$_PauseModel.fromJson;

  @override
  double get temp;
  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$_PauseModelCopyWith<_$_PauseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
