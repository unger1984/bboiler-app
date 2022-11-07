// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  int get tenPin => throw _privateConstructorUsedError;
  int get pumpPin => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tenPin, int pumpPin) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tenPin, int pumpPin)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tenPin, int pumpPin)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveSettingsEvent value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveSettingsEvent value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveSettingsEvent value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsEventCopyWith<SettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
  @useResult
  $Res call({int tenPin, int pumpPin});
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tenPin = null,
    Object? pumpPin = null,
  }) {
    return _then(_value.copyWith(
      tenPin: null == tenPin
          ? _value.tenPin
          : tenPin // ignore: cast_nullable_to_non_nullable
              as int,
      pumpPin: null == pumpPin
          ? _value.pumpPin
          : pumpPin // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveSettingsEventCopyWith<$Res>
    implements $SettingsEventCopyWith<$Res> {
  factory _$$SaveSettingsEventCopyWith(
          _$SaveSettingsEvent value, $Res Function(_$SaveSettingsEvent) then) =
      __$$SaveSettingsEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tenPin, int pumpPin});
}

/// @nodoc
class __$$SaveSettingsEventCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SaveSettingsEvent>
    implements _$$SaveSettingsEventCopyWith<$Res> {
  __$$SaveSettingsEventCopyWithImpl(
      _$SaveSettingsEvent _value, $Res Function(_$SaveSettingsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tenPin = null,
    Object? pumpPin = null,
  }) {
    return _then(_$SaveSettingsEvent(
      tenPin: null == tenPin
          ? _value.tenPin
          : tenPin // ignore: cast_nullable_to_non_nullable
              as int,
      pumpPin: null == pumpPin
          ? _value.pumpPin
          : pumpPin // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SaveSettingsEvent extends SaveSettingsEvent {
  const _$SaveSettingsEvent({required this.tenPin, required this.pumpPin})
      : super._();

  @override
  final int tenPin;
  @override
  final int pumpPin;

  @override
  String toString() {
    return 'SettingsEvent.save(tenPin: $tenPin, pumpPin: $pumpPin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveSettingsEvent &&
            (identical(other.tenPin, tenPin) || other.tenPin == tenPin) &&
            (identical(other.pumpPin, pumpPin) || other.pumpPin == pumpPin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tenPin, pumpPin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveSettingsEventCopyWith<_$SaveSettingsEvent> get copyWith =>
      __$$SaveSettingsEventCopyWithImpl<_$SaveSettingsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int tenPin, int pumpPin) save,
  }) {
    return save(tenPin, pumpPin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int tenPin, int pumpPin)? save,
  }) {
    return save?.call(tenPin, pumpPin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int tenPin, int pumpPin)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(tenPin, pumpPin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SaveSettingsEvent value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SaveSettingsEvent value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SaveSettingsEvent value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveSettingsEvent extends SettingsEvent {
  const factory SaveSettingsEvent(
      {required final int tenPin,
      required final int pumpPin}) = _$SaveSettingsEvent;
  const SaveSettingsEvent._() : super._();

  @override
  int get tenPin;
  @override
  int get pumpPin;
  @override
  @JsonKey(ignore: true)
  _$$SaveSettingsEventCopyWith<_$SaveSettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  SettingsEntity get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsEntity data) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsEntity data)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsEntity data)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataSettingsState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataSettingsState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataSettingsState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({SettingsEntity data});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

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
              as SettingsEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataSettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$DataSettingsStateCopyWith(
          _$DataSettingsState value, $Res Function(_$DataSettingsState) then) =
      __$$DataSettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsEntity data});
}

/// @nodoc
class __$$DataSettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$DataSettingsState>
    implements _$$DataSettingsStateCopyWith<$Res> {
  __$$DataSettingsStateCopyWithImpl(
      _$DataSettingsState _value, $Res Function(_$DataSettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DataSettingsState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsEntity,
    ));
  }
}

/// @nodoc

class _$DataSettingsState extends DataSettingsState {
  const _$DataSettingsState(this.data) : super._();

  @override
  final SettingsEntity data;

  @override
  String toString() {
    return 'SettingsState.data(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSettingsState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSettingsStateCopyWith<_$DataSettingsState> get copyWith =>
      __$$DataSettingsStateCopyWithImpl<_$DataSettingsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsEntity data) data,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsEntity data)? data,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsEntity data)? data,
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
    required TResult Function(DataSettingsState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataSettingsState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataSettingsState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataSettingsState extends SettingsState {
  const factory DataSettingsState(final SettingsEntity data) =
      _$DataSettingsState;
  const DataSettingsState._() : super._();

  @override
  SettingsEntity get data;
  @override
  @JsonKey(ignore: true)
  _$$DataSettingsStateCopyWith<_$DataSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
