// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'boiling_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoilingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heat,
    required TResult Function() pause,
    required TResult Function() boiling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? heat,
    TResult? Function()? pause,
    TResult? Function()? boiling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heat,
    TResult Function()? pause,
    TResult Function()? boiling,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeatBoilingEvent value) heat,
    required TResult Function(PauseBoilingEvent value) pause,
    required TResult Function(BoilingBoilingEvent value) boiling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeatBoilingEvent value)? heat,
    TResult? Function(PauseBoilingEvent value)? pause,
    TResult? Function(BoilingBoilingEvent value)? boiling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeatBoilingEvent value)? heat,
    TResult Function(PauseBoilingEvent value)? pause,
    TResult Function(BoilingBoilingEvent value)? boiling,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoilingEventCopyWith<$Res> {
  factory $BoilingEventCopyWith(
          BoilingEvent value, $Res Function(BoilingEvent) then) =
      _$BoilingEventCopyWithImpl<$Res, BoilingEvent>;
}

/// @nodoc
class _$BoilingEventCopyWithImpl<$Res, $Val extends BoilingEvent>
    implements $BoilingEventCopyWith<$Res> {
  _$BoilingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HeatBoilingEventCopyWith<$Res> {
  factory _$$HeatBoilingEventCopyWith(
          _$HeatBoilingEvent value, $Res Function(_$HeatBoilingEvent) then) =
      __$$HeatBoilingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeatBoilingEventCopyWithImpl<$Res>
    extends _$BoilingEventCopyWithImpl<$Res, _$HeatBoilingEvent>
    implements _$$HeatBoilingEventCopyWith<$Res> {
  __$$HeatBoilingEventCopyWithImpl(
      _$HeatBoilingEvent _value, $Res Function(_$HeatBoilingEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HeatBoilingEvent extends HeatBoilingEvent {
  const _$HeatBoilingEvent() : super._();

  @override
  String toString() {
    return 'BoilingEvent.heat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeatBoilingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heat,
    required TResult Function() pause,
    required TResult Function() boiling,
  }) {
    return heat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? heat,
    TResult? Function()? pause,
    TResult? Function()? boiling,
  }) {
    return heat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heat,
    TResult Function()? pause,
    TResult Function()? boiling,
    required TResult orElse(),
  }) {
    if (heat != null) {
      return heat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeatBoilingEvent value) heat,
    required TResult Function(PauseBoilingEvent value) pause,
    required TResult Function(BoilingBoilingEvent value) boiling,
  }) {
    return heat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeatBoilingEvent value)? heat,
    TResult? Function(PauseBoilingEvent value)? pause,
    TResult? Function(BoilingBoilingEvent value)? boiling,
  }) {
    return heat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeatBoilingEvent value)? heat,
    TResult Function(PauseBoilingEvent value)? pause,
    TResult Function(BoilingBoilingEvent value)? boiling,
    required TResult orElse(),
  }) {
    if (heat != null) {
      return heat(this);
    }
    return orElse();
  }
}

abstract class HeatBoilingEvent extends BoilingEvent {
  const factory HeatBoilingEvent() = _$HeatBoilingEvent;
  const HeatBoilingEvent._() : super._();
}

/// @nodoc
abstract class _$$PauseBoilingEventCopyWith<$Res> {
  factory _$$PauseBoilingEventCopyWith(
          _$PauseBoilingEvent value, $Res Function(_$PauseBoilingEvent) then) =
      __$$PauseBoilingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseBoilingEventCopyWithImpl<$Res>
    extends _$BoilingEventCopyWithImpl<$Res, _$PauseBoilingEvent>
    implements _$$PauseBoilingEventCopyWith<$Res> {
  __$$PauseBoilingEventCopyWithImpl(
      _$PauseBoilingEvent _value, $Res Function(_$PauseBoilingEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseBoilingEvent extends PauseBoilingEvent {
  const _$PauseBoilingEvent() : super._();

  @override
  String toString() {
    return 'BoilingEvent.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseBoilingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heat,
    required TResult Function() pause,
    required TResult Function() boiling,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? heat,
    TResult? Function()? pause,
    TResult? Function()? boiling,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heat,
    TResult Function()? pause,
    TResult Function()? boiling,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeatBoilingEvent value) heat,
    required TResult Function(PauseBoilingEvent value) pause,
    required TResult Function(BoilingBoilingEvent value) boiling,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeatBoilingEvent value)? heat,
    TResult? Function(PauseBoilingEvent value)? pause,
    TResult? Function(BoilingBoilingEvent value)? boiling,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeatBoilingEvent value)? heat,
    TResult Function(PauseBoilingEvent value)? pause,
    TResult Function(BoilingBoilingEvent value)? boiling,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class PauseBoilingEvent extends BoilingEvent {
  const factory PauseBoilingEvent() = _$PauseBoilingEvent;
  const PauseBoilingEvent._() : super._();
}

/// @nodoc
abstract class _$$BoilingBoilingEventCopyWith<$Res> {
  factory _$$BoilingBoilingEventCopyWith(_$BoilingBoilingEvent value,
          $Res Function(_$BoilingBoilingEvent) then) =
      __$$BoilingBoilingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BoilingBoilingEventCopyWithImpl<$Res>
    extends _$BoilingEventCopyWithImpl<$Res, _$BoilingBoilingEvent>
    implements _$$BoilingBoilingEventCopyWith<$Res> {
  __$$BoilingBoilingEventCopyWithImpl(
      _$BoilingBoilingEvent _value, $Res Function(_$BoilingBoilingEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BoilingBoilingEvent extends BoilingBoilingEvent {
  const _$BoilingBoilingEvent() : super._();

  @override
  String toString() {
    return 'BoilingEvent.boiling()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BoilingBoilingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heat,
    required TResult Function() pause,
    required TResult Function() boiling,
  }) {
    return boiling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? heat,
    TResult? Function()? pause,
    TResult? Function()? boiling,
  }) {
    return boiling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heat,
    TResult Function()? pause,
    TResult Function()? boiling,
    required TResult orElse(),
  }) {
    if (boiling != null) {
      return boiling();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeatBoilingEvent value) heat,
    required TResult Function(PauseBoilingEvent value) pause,
    required TResult Function(BoilingBoilingEvent value) boiling,
  }) {
    return boiling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeatBoilingEvent value)? heat,
    TResult? Function(PauseBoilingEvent value)? pause,
    TResult? Function(BoilingBoilingEvent value)? boiling,
  }) {
    return boiling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeatBoilingEvent value)? heat,
    TResult Function(PauseBoilingEvent value)? pause,
    TResult Function(BoilingBoilingEvent value)? boiling,
    required TResult orElse(),
  }) {
    if (boiling != null) {
      return boiling(this);
    }
    return orElse();
  }
}

abstract class BoilingBoilingEvent extends BoilingEvent {
  const factory BoilingBoilingEvent() = _$BoilingBoilingEvent;
  const BoilingBoilingEvent._() : super._();
}

/// @nodoc
mixin _$BoilingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heat,
    required TResult Function() pause,
    required TResult Function() boiling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? heat,
    TResult? Function()? pause,
    TResult? Function()? boiling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heat,
    TResult Function()? pause,
    TResult Function()? boiling,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeatBoilingState value) heat,
    required TResult Function(PauseBoilingState value) pause,
    required TResult Function(BoilingBoilingState value) boiling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeatBoilingState value)? heat,
    TResult? Function(PauseBoilingState value)? pause,
    TResult? Function(BoilingBoilingState value)? boiling,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeatBoilingState value)? heat,
    TResult Function(PauseBoilingState value)? pause,
    TResult Function(BoilingBoilingState value)? boiling,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoilingStateCopyWith<$Res> {
  factory $BoilingStateCopyWith(
          BoilingState value, $Res Function(BoilingState) then) =
      _$BoilingStateCopyWithImpl<$Res, BoilingState>;
}

/// @nodoc
class _$BoilingStateCopyWithImpl<$Res, $Val extends BoilingState>
    implements $BoilingStateCopyWith<$Res> {
  _$BoilingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HeatBoilingStateCopyWith<$Res> {
  factory _$$HeatBoilingStateCopyWith(
          _$HeatBoilingState value, $Res Function(_$HeatBoilingState) then) =
      __$$HeatBoilingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeatBoilingStateCopyWithImpl<$Res>
    extends _$BoilingStateCopyWithImpl<$Res, _$HeatBoilingState>
    implements _$$HeatBoilingStateCopyWith<$Res> {
  __$$HeatBoilingStateCopyWithImpl(
      _$HeatBoilingState _value, $Res Function(_$HeatBoilingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HeatBoilingState extends HeatBoilingState {
  const _$HeatBoilingState() : super._();

  @override
  String toString() {
    return 'BoilingState.heat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeatBoilingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heat,
    required TResult Function() pause,
    required TResult Function() boiling,
  }) {
    return heat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? heat,
    TResult? Function()? pause,
    TResult? Function()? boiling,
  }) {
    return heat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heat,
    TResult Function()? pause,
    TResult Function()? boiling,
    required TResult orElse(),
  }) {
    if (heat != null) {
      return heat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeatBoilingState value) heat,
    required TResult Function(PauseBoilingState value) pause,
    required TResult Function(BoilingBoilingState value) boiling,
  }) {
    return heat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeatBoilingState value)? heat,
    TResult? Function(PauseBoilingState value)? pause,
    TResult? Function(BoilingBoilingState value)? boiling,
  }) {
    return heat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeatBoilingState value)? heat,
    TResult Function(PauseBoilingState value)? pause,
    TResult Function(BoilingBoilingState value)? boiling,
    required TResult orElse(),
  }) {
    if (heat != null) {
      return heat(this);
    }
    return orElse();
  }
}

abstract class HeatBoilingState extends BoilingState {
  const factory HeatBoilingState() = _$HeatBoilingState;
  const HeatBoilingState._() : super._();
}

/// @nodoc
abstract class _$$PauseBoilingStateCopyWith<$Res> {
  factory _$$PauseBoilingStateCopyWith(
          _$PauseBoilingState value, $Res Function(_$PauseBoilingState) then) =
      __$$PauseBoilingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseBoilingStateCopyWithImpl<$Res>
    extends _$BoilingStateCopyWithImpl<$Res, _$PauseBoilingState>
    implements _$$PauseBoilingStateCopyWith<$Res> {
  __$$PauseBoilingStateCopyWithImpl(
      _$PauseBoilingState _value, $Res Function(_$PauseBoilingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PauseBoilingState extends PauseBoilingState {
  const _$PauseBoilingState() : super._();

  @override
  String toString() {
    return 'BoilingState.pause()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseBoilingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heat,
    required TResult Function() pause,
    required TResult Function() boiling,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? heat,
    TResult? Function()? pause,
    TResult? Function()? boiling,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heat,
    TResult Function()? pause,
    TResult Function()? boiling,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeatBoilingState value) heat,
    required TResult Function(PauseBoilingState value) pause,
    required TResult Function(BoilingBoilingState value) boiling,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeatBoilingState value)? heat,
    TResult? Function(PauseBoilingState value)? pause,
    TResult? Function(BoilingBoilingState value)? boiling,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeatBoilingState value)? heat,
    TResult Function(PauseBoilingState value)? pause,
    TResult Function(BoilingBoilingState value)? boiling,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class PauseBoilingState extends BoilingState {
  const factory PauseBoilingState() = _$PauseBoilingState;
  const PauseBoilingState._() : super._();
}

/// @nodoc
abstract class _$$BoilingBoilingStateCopyWith<$Res> {
  factory _$$BoilingBoilingStateCopyWith(_$BoilingBoilingState value,
          $Res Function(_$BoilingBoilingState) then) =
      __$$BoilingBoilingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BoilingBoilingStateCopyWithImpl<$Res>
    extends _$BoilingStateCopyWithImpl<$Res, _$BoilingBoilingState>
    implements _$$BoilingBoilingStateCopyWith<$Res> {
  __$$BoilingBoilingStateCopyWithImpl(
      _$BoilingBoilingState _value, $Res Function(_$BoilingBoilingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BoilingBoilingState extends BoilingBoilingState {
  const _$BoilingBoilingState() : super._();

  @override
  String toString() {
    return 'BoilingState.boiling()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BoilingBoilingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() heat,
    required TResult Function() pause,
    required TResult Function() boiling,
  }) {
    return boiling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? heat,
    TResult? Function()? pause,
    TResult? Function()? boiling,
  }) {
    return boiling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? heat,
    TResult Function()? pause,
    TResult Function()? boiling,
    required TResult orElse(),
  }) {
    if (boiling != null) {
      return boiling();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HeatBoilingState value) heat,
    required TResult Function(PauseBoilingState value) pause,
    required TResult Function(BoilingBoilingState value) boiling,
  }) {
    return boiling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HeatBoilingState value)? heat,
    TResult? Function(PauseBoilingState value)? pause,
    TResult? Function(BoilingBoilingState value)? boiling,
  }) {
    return boiling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HeatBoilingState value)? heat,
    TResult Function(PauseBoilingState value)? pause,
    TResult Function(BoilingBoilingState value)? boiling,
    required TResult orElse(),
  }) {
    if (boiling != null) {
      return boiling(this);
    }
    return orElse();
  }
}

abstract class BoilingBoilingState extends BoilingState {
  const factory BoilingBoilingState() = _$BoilingBoilingState;
  const BoilingBoilingState._() : super._();
}
