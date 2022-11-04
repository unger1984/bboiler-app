// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HopModel _$HopModelFromJson(Map<String, dynamic> json) {
  return _HopModel.fromJson(json);
}

/// @nodoc
mixin _$HopModel {
  int get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HopModelCopyWith<HopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HopModelCopyWith<$Res> {
  factory $HopModelCopyWith(HopModel value, $Res Function(HopModel) then) =
      _$HopModelCopyWithImpl<$Res, HopModel>;
  @useResult
  $Res call({int time});
}

/// @nodoc
class _$HopModelCopyWithImpl<$Res, $Val extends HopModel>
    implements $HopModelCopyWith<$Res> {
  _$HopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HopModelCopyWith<$Res> implements $HopModelCopyWith<$Res> {
  factory _$$_HopModelCopyWith(
          _$_HopModel value, $Res Function(_$_HopModel) then) =
      __$$_HopModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int time});
}

/// @nodoc
class __$$_HopModelCopyWithImpl<$Res>
    extends _$HopModelCopyWithImpl<$Res, _$_HopModel>
    implements _$$_HopModelCopyWith<$Res> {
  __$$_HopModelCopyWithImpl(
      _$_HopModel _value, $Res Function(_$_HopModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$_HopModel(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HopModel implements _HopModel {
  const _$_HopModel({required this.time});

  factory _$_HopModel.fromJson(Map<String, dynamic> json) =>
      _$$_HopModelFromJson(json);

  @override
  final int time;

  @override
  String toString() {
    return 'HopModel(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HopModel &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HopModelCopyWith<_$_HopModel> get copyWith =>
      __$$_HopModelCopyWithImpl<_$_HopModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HopModelToJson(
      this,
    );
  }
}

abstract class _HopModel implements HopModel {
  const factory _HopModel({required final int time}) = _$_HopModel;

  factory _HopModel.fromJson(Map<String, dynamic> json) = _$_HopModel.fromJson;

  @override
  int get time;
  @override
  @JsonKey(ignore: true)
  _$$_HopModelCopyWith<_$_HopModel> get copyWith =>
      throw _privateConstructorUsedError;
}
