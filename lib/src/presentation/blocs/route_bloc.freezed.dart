// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'route_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RouteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() boiling,
    required TResult Function() settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? boiling,
    TResult? Function()? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? boiling,
    TResult Function()? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoilingRouteEvent value) boiling,
    required TResult Function(SettingsRouteEvent value) settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoilingRouteEvent value)? boiling,
    TResult? Function(SettingsRouteEvent value)? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoilingRouteEvent value)? boiling,
    TResult Function(SettingsRouteEvent value)? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteEventCopyWith<$Res> {
  factory $RouteEventCopyWith(
          RouteEvent value, $Res Function(RouteEvent) then) =
      _$RouteEventCopyWithImpl<$Res, RouteEvent>;
}

/// @nodoc
class _$RouteEventCopyWithImpl<$Res, $Val extends RouteEvent>
    implements $RouteEventCopyWith<$Res> {
  _$RouteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BoilingRouteEventCopyWith<$Res> {
  factory _$$BoilingRouteEventCopyWith(
          _$BoilingRouteEvent value, $Res Function(_$BoilingRouteEvent) then) =
      __$$BoilingRouteEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BoilingRouteEventCopyWithImpl<$Res>
    extends _$RouteEventCopyWithImpl<$Res, _$BoilingRouteEvent>
    implements _$$BoilingRouteEventCopyWith<$Res> {
  __$$BoilingRouteEventCopyWithImpl(
      _$BoilingRouteEvent _value, $Res Function(_$BoilingRouteEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BoilingRouteEvent extends BoilingRouteEvent {
  const _$BoilingRouteEvent() : super._();

  @override
  String toString() {
    return 'RouteEvent.boiling()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BoilingRouteEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() boiling,
    required TResult Function() settings,
  }) {
    return boiling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? boiling,
    TResult? Function()? settings,
  }) {
    return boiling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? boiling,
    TResult Function()? settings,
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
    required TResult Function(BoilingRouteEvent value) boiling,
    required TResult Function(SettingsRouteEvent value) settings,
  }) {
    return boiling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoilingRouteEvent value)? boiling,
    TResult? Function(SettingsRouteEvent value)? settings,
  }) {
    return boiling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoilingRouteEvent value)? boiling,
    TResult Function(SettingsRouteEvent value)? settings,
    required TResult orElse(),
  }) {
    if (boiling != null) {
      return boiling(this);
    }
    return orElse();
  }
}

abstract class BoilingRouteEvent extends RouteEvent {
  const factory BoilingRouteEvent() = _$BoilingRouteEvent;
  const BoilingRouteEvent._() : super._();
}

/// @nodoc
abstract class _$$SettingsRouteEventCopyWith<$Res> {
  factory _$$SettingsRouteEventCopyWith(_$SettingsRouteEvent value,
          $Res Function(_$SettingsRouteEvent) then) =
      __$$SettingsRouteEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsRouteEventCopyWithImpl<$Res>
    extends _$RouteEventCopyWithImpl<$Res, _$SettingsRouteEvent>
    implements _$$SettingsRouteEventCopyWith<$Res> {
  __$$SettingsRouteEventCopyWithImpl(
      _$SettingsRouteEvent _value, $Res Function(_$SettingsRouteEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsRouteEvent extends SettingsRouteEvent {
  const _$SettingsRouteEvent() : super._();

  @override
  String toString() {
    return 'RouteEvent.settings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsRouteEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() boiling,
    required TResult Function() settings,
  }) {
    return settings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? boiling,
    TResult? Function()? settings,
  }) {
    return settings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? boiling,
    TResult Function()? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoilingRouteEvent value) boiling,
    required TResult Function(SettingsRouteEvent value) settings,
  }) {
    return settings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoilingRouteEvent value)? boiling,
    TResult? Function(SettingsRouteEvent value)? settings,
  }) {
    return settings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoilingRouteEvent value)? boiling,
    TResult Function(SettingsRouteEvent value)? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(this);
    }
    return orElse();
  }
}

abstract class SettingsRouteEvent extends RouteEvent {
  const factory SettingsRouteEvent() = _$SettingsRouteEvent;
  const SettingsRouteEvent._() : super._();
}

/// @nodoc
mixin _$RouteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() boiling,
    required TResult Function() settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? boiling,
    TResult? Function()? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? boiling,
    TResult Function()? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoilingRouteState value) boiling,
    required TResult Function(SettingsRouteState value) settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoilingRouteState value)? boiling,
    TResult? Function(SettingsRouteState value)? settings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoilingRouteState value)? boiling,
    TResult Function(SettingsRouteState value)? settings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteStateCopyWith<$Res> {
  factory $RouteStateCopyWith(
          RouteState value, $Res Function(RouteState) then) =
      _$RouteStateCopyWithImpl<$Res, RouteState>;
}

/// @nodoc
class _$RouteStateCopyWithImpl<$Res, $Val extends RouteState>
    implements $RouteStateCopyWith<$Res> {
  _$RouteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BoilingRouteStateCopyWith<$Res> {
  factory _$$BoilingRouteStateCopyWith(
          _$BoilingRouteState value, $Res Function(_$BoilingRouteState) then) =
      __$$BoilingRouteStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BoilingRouteStateCopyWithImpl<$Res>
    extends _$RouteStateCopyWithImpl<$Res, _$BoilingRouteState>
    implements _$$BoilingRouteStateCopyWith<$Res> {
  __$$BoilingRouteStateCopyWithImpl(
      _$BoilingRouteState _value, $Res Function(_$BoilingRouteState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BoilingRouteState extends BoilingRouteState {
  const _$BoilingRouteState() : super._();

  @override
  String toString() {
    return 'RouteState.boiling()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BoilingRouteState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() boiling,
    required TResult Function() settings,
  }) {
    return boiling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? boiling,
    TResult? Function()? settings,
  }) {
    return boiling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? boiling,
    TResult Function()? settings,
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
    required TResult Function(BoilingRouteState value) boiling,
    required TResult Function(SettingsRouteState value) settings,
  }) {
    return boiling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoilingRouteState value)? boiling,
    TResult? Function(SettingsRouteState value)? settings,
  }) {
    return boiling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoilingRouteState value)? boiling,
    TResult Function(SettingsRouteState value)? settings,
    required TResult orElse(),
  }) {
    if (boiling != null) {
      return boiling(this);
    }
    return orElse();
  }
}

abstract class BoilingRouteState extends RouteState {
  const factory BoilingRouteState() = _$BoilingRouteState;
  const BoilingRouteState._() : super._();
}

/// @nodoc
abstract class _$$SettingsRouteStateCopyWith<$Res> {
  factory _$$SettingsRouteStateCopyWith(_$SettingsRouteState value,
          $Res Function(_$SettingsRouteState) then) =
      __$$SettingsRouteStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingsRouteStateCopyWithImpl<$Res>
    extends _$RouteStateCopyWithImpl<$Res, _$SettingsRouteState>
    implements _$$SettingsRouteStateCopyWith<$Res> {
  __$$SettingsRouteStateCopyWithImpl(
      _$SettingsRouteState _value, $Res Function(_$SettingsRouteState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettingsRouteState extends SettingsRouteState {
  const _$SettingsRouteState() : super._();

  @override
  String toString() {
    return 'RouteState.settings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SettingsRouteState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() boiling,
    required TResult Function() settings,
  }) {
    return settings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? boiling,
    TResult? Function()? settings,
  }) {
    return settings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? boiling,
    TResult Function()? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BoilingRouteState value) boiling,
    required TResult Function(SettingsRouteState value) settings,
  }) {
    return settings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BoilingRouteState value)? boiling,
    TResult? Function(SettingsRouteState value)? settings,
  }) {
    return settings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BoilingRouteState value)? boiling,
    TResult Function(SettingsRouteState value)? settings,
    required TResult orElse(),
  }) {
    if (settings != null) {
      return settings(this);
    }
    return orElse();
  }
}

abstract class SettingsRouteState extends RouteState {
  const factory SettingsRouteState() = _$SettingsRouteState;
  const SettingsRouteState._() : super._();
}
