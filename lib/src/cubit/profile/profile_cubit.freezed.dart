// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

// ignore: unused_element
  _ProfileInitial initial() {
    return const _ProfileInitial();
  }

// ignore: unused_element
  _ProfileLoading loading() {
    return const _ProfileLoading();
  }

// ignore: unused_element
  _ProfileLoadedSuccess success() {
    return const _ProfileLoadedSuccess();
  }

// ignore: unused_element
  _ProfileLoadedError error([String message]) {
    return _ProfileLoadedError(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_ProfileInitial value),
    @required TResult loading(_ProfileLoading value),
    @required TResult success(_ProfileLoadedSuccess value),
    @required TResult error(_ProfileLoadedError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_ProfileInitial value),
    TResult loading(_ProfileLoading value),
    TResult success(_ProfileLoadedSuccess value),
    TResult error(_ProfileLoadedError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$ProfileInitialCopyWith<$Res> {
  factory _$ProfileInitialCopyWith(
          _ProfileInitial value, $Res Function(_ProfileInitial) then) =
      __$ProfileInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProfileInitialCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileInitialCopyWith<$Res> {
  __$ProfileInitialCopyWithImpl(
      _ProfileInitial _value, $Res Function(_ProfileInitial) _then)
      : super(_value, (v) => _then(v as _ProfileInitial));

  @override
  _ProfileInitial get _value => super._value as _ProfileInitial;
}

/// @nodoc
class _$_ProfileInitial implements _ProfileInitial {
  const _$_ProfileInitial();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProfileInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_ProfileInitial value),
    @required TResult loading(_ProfileLoading value),
    @required TResult success(_ProfileLoadedSuccess value),
    @required TResult error(_ProfileLoadedError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_ProfileInitial value),
    TResult loading(_ProfileLoading value),
    TResult success(_ProfileLoadedSuccess value),
    TResult error(_ProfileLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProfileInitial implements ProfileState {
  const factory _ProfileInitial() = _$_ProfileInitial;
}

/// @nodoc
abstract class _$ProfileLoadingCopyWith<$Res> {
  factory _$ProfileLoadingCopyWith(
          _ProfileLoading value, $Res Function(_ProfileLoading) then) =
      __$ProfileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProfileLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileLoadingCopyWith<$Res> {
  __$ProfileLoadingCopyWithImpl(
      _ProfileLoading _value, $Res Function(_ProfileLoading) _then)
      : super(_value, (v) => _then(v as _ProfileLoading));

  @override
  _ProfileLoading get _value => super._value as _ProfileLoading;
}

/// @nodoc
class _$_ProfileLoading implements _ProfileLoading {
  const _$_ProfileLoading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_ProfileInitial value),
    @required TResult loading(_ProfileLoading value),
    @required TResult success(_ProfileLoadedSuccess value),
    @required TResult error(_ProfileLoadedError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_ProfileInitial value),
    TResult loading(_ProfileLoading value),
    TResult success(_ProfileLoadedSuccess value),
    TResult error(_ProfileLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoading implements ProfileState {
  const factory _ProfileLoading() = _$_ProfileLoading;
}

/// @nodoc
abstract class _$ProfileLoadedSuccessCopyWith<$Res> {
  factory _$ProfileLoadedSuccessCopyWith(_ProfileLoadedSuccess value,
          $Res Function(_ProfileLoadedSuccess) then) =
      __$ProfileLoadedSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProfileLoadedSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileLoadedSuccessCopyWith<$Res> {
  __$ProfileLoadedSuccessCopyWithImpl(
      _ProfileLoadedSuccess _value, $Res Function(_ProfileLoadedSuccess) _then)
      : super(_value, (v) => _then(v as _ProfileLoadedSuccess));

  @override
  _ProfileLoadedSuccess get _value => super._value as _ProfileLoadedSuccess;
}

/// @nodoc
class _$_ProfileLoadedSuccess implements _ProfileLoadedSuccess {
  const _$_ProfileLoadedSuccess();

  @override
  String toString() {
    return 'ProfileState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProfileLoadedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_ProfileInitial value),
    @required TResult loading(_ProfileLoading value),
    @required TResult success(_ProfileLoadedSuccess value),
    @required TResult error(_ProfileLoadedError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_ProfileInitial value),
    TResult loading(_ProfileLoading value),
    TResult success(_ProfileLoadedSuccess value),
    TResult error(_ProfileLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoadedSuccess implements ProfileState {
  const factory _ProfileLoadedSuccess() = _$_ProfileLoadedSuccess;
}

/// @nodoc
abstract class _$ProfileLoadedErrorCopyWith<$Res> {
  factory _$ProfileLoadedErrorCopyWith(
          _ProfileLoadedError value, $Res Function(_ProfileLoadedError) then) =
      __$ProfileLoadedErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ProfileLoadedErrorCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileLoadedErrorCopyWith<$Res> {
  __$ProfileLoadedErrorCopyWithImpl(
      _ProfileLoadedError _value, $Res Function(_ProfileLoadedError) _then)
      : super(_value, (v) => _then(v as _ProfileLoadedError));

  @override
  _ProfileLoadedError get _value => super._value as _ProfileLoadedError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_ProfileLoadedError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_ProfileLoadedError implements _ProfileLoadedError {
  const _$_ProfileLoadedError([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileLoadedError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ProfileLoadedErrorCopyWith<_ProfileLoadedError> get copyWith =>
      __$ProfileLoadedErrorCopyWithImpl<_ProfileLoadedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_ProfileInitial value),
    @required TResult loading(_ProfileLoading value),
    @required TResult success(_ProfileLoadedSuccess value),
    @required TResult error(_ProfileLoadedError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_ProfileInitial value),
    TResult loading(_ProfileLoading value),
    TResult success(_ProfileLoadedSuccess value),
    TResult error(_ProfileLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoadedError implements ProfileState {
  const factory _ProfileLoadedError([String message]) = _$_ProfileLoadedError;

  String get message;
  @JsonKey(ignore: true)
  _$ProfileLoadedErrorCopyWith<_ProfileLoadedError> get copyWith;
}
