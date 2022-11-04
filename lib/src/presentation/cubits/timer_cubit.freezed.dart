// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimerCubitState {
  DateTime get time => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime time) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime time)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime time)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataTimerCubitState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataTimerCubitState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataTimerCubitState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimerCubitStateCopyWith<TimerCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerCubitStateCopyWith<$Res> {
  factory $TimerCubitStateCopyWith(
          TimerCubitState value, $Res Function(TimerCubitState) then) =
      _$TimerCubitStateCopyWithImpl<$Res, TimerCubitState>;
  @useResult
  $Res call({DateTime time});
}

/// @nodoc
class _$TimerCubitStateCopyWithImpl<$Res, $Val extends TimerCubitState>
    implements $TimerCubitStateCopyWith<$Res> {
  _$TimerCubitStateCopyWithImpl(this._value, this._then);

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
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataTimerCubitStateCopyWith<$Res>
    implements $TimerCubitStateCopyWith<$Res> {
  factory _$$DataTimerCubitStateCopyWith(_$DataTimerCubitState value,
          $Res Function(_$DataTimerCubitState) then) =
      __$$DataTimerCubitStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime time});
}

/// @nodoc
class __$$DataTimerCubitStateCopyWithImpl<$Res>
    extends _$TimerCubitStateCopyWithImpl<$Res, _$DataTimerCubitState>
    implements _$$DataTimerCubitStateCopyWith<$Res> {
  __$$DataTimerCubitStateCopyWithImpl(
      _$DataTimerCubitState _value, $Res Function(_$DataTimerCubitState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
  }) {
    return _then(_$DataTimerCubitState(
      null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DataTimerCubitState extends DataTimerCubitState {
  const _$DataTimerCubitState(this.time) : super._();

  @override
  final DateTime time;

  @override
  String toString() {
    return 'TimerCubitState.data(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataTimerCubitState &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataTimerCubitStateCopyWith<_$DataTimerCubitState> get copyWith =>
      __$$DataTimerCubitStateCopyWithImpl<_$DataTimerCubitState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime time) data,
  }) {
    return data(time);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime time)? data,
  }) {
    return data?.call(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime time)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataTimerCubitState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataTimerCubitState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataTimerCubitState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataTimerCubitState extends TimerCubitState {
  const factory DataTimerCubitState(final DateTime time) =
      _$DataTimerCubitState;
  const DataTimerCubitState._() : super._();

  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$DataTimerCubitStateCopyWith<_$DataTimerCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}
