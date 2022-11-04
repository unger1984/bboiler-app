// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'session_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionCubitState {
  SessionEntity get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SessionEntity data) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SessionEntity data)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SessionEntity data)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataSessionCubitState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataSessionCubitState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataSessionCubitState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SessionCubitStateCopyWith<SessionCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCubitStateCopyWith<$Res> {
  factory $SessionCubitStateCopyWith(
          SessionCubitState value, $Res Function(SessionCubitState) then) =
      _$SessionCubitStateCopyWithImpl<$Res, SessionCubitState>;
  @useResult
  $Res call({SessionEntity data});
}

/// @nodoc
class _$SessionCubitStateCopyWithImpl<$Res, $Val extends SessionCubitState>
    implements $SessionCubitStateCopyWith<$Res> {
  _$SessionCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SessionEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataSessionCubitStateCopyWith<$Res>
    implements $SessionCubitStateCopyWith<$Res> {
  factory _$$DataSessionCubitStateCopyWith(_$DataSessionCubitState value,
          $Res Function(_$DataSessionCubitState) then) =
      __$$DataSessionCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SessionEntity data});
}

/// @nodoc
class __$$DataSessionCubitStateCopyWithImpl<$Res>
    extends _$SessionCubitStateCopyWithImpl<$Res, _$DataSessionCubitState>
    implements _$$DataSessionCubitStateCopyWith<$Res> {
  __$$DataSessionCubitStateCopyWithImpl(_$DataSessionCubitState _value,
      $Res Function(_$DataSessionCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DataSessionCubitState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SessionEntity,
    ));
  }
}

/// @nodoc

class _$DataSessionCubitState extends DataSessionCubitState {
  const _$DataSessionCubitState(this.data) : super._();

  @override
  final SessionEntity data;

  @override
  String toString() {
    return 'SessionCubitState.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSessionCubitState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSessionCubitStateCopyWith<_$DataSessionCubitState> get copyWith =>
      __$$DataSessionCubitStateCopyWithImpl<_$DataSessionCubitState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SessionEntity data) data,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SessionEntity data)? data,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SessionEntity data)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataSessionCubitState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataSessionCubitState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataSessionCubitState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataSessionCubitState extends SessionCubitState {
  const factory DataSessionCubitState(final SessionEntity data) =
      _$DataSessionCubitState;
  const DataSessionCubitState._() : super._();

  @override
  SessionEntity get data;
  @override
  @JsonKey(ignore: true)
  _$$DataSessionCubitStateCopyWith<_$DataSessionCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
