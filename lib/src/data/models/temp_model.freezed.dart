// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'temp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TempModel _$TempModelFromJson(Map<String, dynamic> json) {
  return _TempModel.fromJson(json);
}

/// @nodoc
mixin _$TempModel {
  String get name => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempModelCopyWith<TempModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempModelCopyWith<$Res> {
  factory $TempModelCopyWith(TempModel value, $Res Function(TempModel) then) =
      _$TempModelCopyWithImpl<$Res, TempModel>;
  @useResult
  $Res call({String name, double value});
}

/// @nodoc
class _$TempModelCopyWithImpl<$Res, $Val extends TempModel>
    implements $TempModelCopyWith<$Res> {
  _$TempModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TempModelCopyWith<$Res> implements $TempModelCopyWith<$Res> {
  factory _$$_TempModelCopyWith(
          _$_TempModel value, $Res Function(_$_TempModel) then) =
      __$$_TempModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double value});
}

/// @nodoc
class __$$_TempModelCopyWithImpl<$Res>
    extends _$TempModelCopyWithImpl<$Res, _$_TempModel>
    implements _$$_TempModelCopyWith<$Res> {
  __$$_TempModelCopyWithImpl(
      _$_TempModel _value, $Res Function(_$_TempModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
  }) {
    return _then(_$_TempModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TempModel implements _TempModel {
  const _$_TempModel({required this.name, required this.value});

  factory _$_TempModel.fromJson(Map<String, dynamic> json) =>
      _$$_TempModelFromJson(json);

  @override
  final String name;
  @override
  final double value;

  @override
  String toString() {
    return 'TempModel(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TempModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TempModelCopyWith<_$_TempModel> get copyWith =>
      __$$_TempModelCopyWithImpl<_$_TempModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempModelToJson(
      this,
    );
  }
}

abstract class _TempModel implements TempModel {
  const factory _TempModel(
      {required final String name, required final double value}) = _$_TempModel;

  factory _TempModel.fromJson(Map<String, dynamic> json) =
      _$_TempModel.fromJson;

  @override
  String get name;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$_TempModelCopyWith<_$_TempModel> get copyWith =>
      throw _privateConstructorUsedError;
}
