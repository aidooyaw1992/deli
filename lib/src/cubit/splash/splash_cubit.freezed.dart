// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'splash_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

// ignore: unused_element
  _SplashInitial initial() {
    return const _SplashInitial();
  }

// ignore: unused_element
  _SplashLoading loading() {
    return const _SplashLoading();
  }

// ignore: unused_element
  _SplashLoadedSuccess success(User user) {
    return _SplashLoadedSuccess(
      user,
    );
  }

// ignore: unused_element
  _SplashLoadedError error([String message]) {
    return _SplashLoadedError(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user),
    @required TResult error(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(User user),
    TResult error(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_SplashInitial value),
    @required TResult loading(_SplashLoading value),
    @required TResult success(_SplashLoadedSuccess value),
    @required TResult error(_SplashLoadedError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_SplashInitial value),
    TResult loading(_SplashLoading value),
    TResult success(_SplashLoadedSuccess value),
    TResult error(_SplashLoadedError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;
}

/// @nodoc
abstract class _$SplashInitialCopyWith<$Res> {
  factory _$SplashInitialCopyWith(
          _SplashInitial value, $Res Function(_SplashInitial) then) =
      __$SplashInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$SplashInitialCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$SplashInitialCopyWith<$Res> {
  __$SplashInitialCopyWithImpl(
      _SplashInitial _value, $Res Function(_SplashInitial) _then)
      : super(_value, (v) => _then(v as _SplashInitial));

  @override
  _SplashInitial get _value => super._value as _SplashInitial;
}

/// @nodoc
class _$_SplashInitial implements _SplashInitial {
  const _$_SplashInitial();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SplashInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user),
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
    TResult success(User user),
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
    @required TResult initial(_SplashInitial value),
    @required TResult loading(_SplashLoading value),
    @required TResult success(_SplashLoadedSuccess value),
    @required TResult error(_SplashLoadedError value),
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
    TResult initial(_SplashInitial value),
    TResult loading(_SplashLoading value),
    TResult success(_SplashLoadedSuccess value),
    TResult error(_SplashLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SplashInitial implements SplashState {
  const factory _SplashInitial() = _$_SplashInitial;
}

/// @nodoc
abstract class _$SplashLoadingCopyWith<$Res> {
  factory _$SplashLoadingCopyWith(
          _SplashLoading value, $Res Function(_SplashLoading) then) =
      __$SplashLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SplashLoadingCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$SplashLoadingCopyWith<$Res> {
  __$SplashLoadingCopyWithImpl(
      _SplashLoading _value, $Res Function(_SplashLoading) _then)
      : super(_value, (v) => _then(v as _SplashLoading));

  @override
  _SplashLoading get _value => super._value as _SplashLoading;
}

/// @nodoc
class _$_SplashLoading implements _SplashLoading {
  const _$_SplashLoading();

  @override
  String toString() {
    return 'SplashState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SplashLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user),
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
    TResult success(User user),
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
    @required TResult initial(_SplashInitial value),
    @required TResult loading(_SplashLoading value),
    @required TResult success(_SplashLoadedSuccess value),
    @required TResult error(_SplashLoadedError value),
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
    TResult initial(_SplashInitial value),
    TResult loading(_SplashLoading value),
    TResult success(_SplashLoadedSuccess value),
    TResult error(_SplashLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SplashLoading implements SplashState {
  const factory _SplashLoading() = _$_SplashLoading;
}

/// @nodoc
abstract class _$SplashLoadedSuccessCopyWith<$Res> {
  factory _$SplashLoadedSuccessCopyWith(_SplashLoadedSuccess value,
          $Res Function(_SplashLoadedSuccess) then) =
      __$SplashLoadedSuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$SplashLoadedSuccessCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$SplashLoadedSuccessCopyWith<$Res> {
  __$SplashLoadedSuccessCopyWithImpl(
      _SplashLoadedSuccess _value, $Res Function(_SplashLoadedSuccess) _then)
      : super(_value, (v) => _then(v as _SplashLoadedSuccess));

  @override
  _SplashLoadedSuccess get _value => super._value as _SplashLoadedSuccess;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_SplashLoadedSuccess(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_SplashLoadedSuccess implements _SplashLoadedSuccess {
  const _$_SplashLoadedSuccess(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'SplashState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashLoadedSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$SplashLoadedSuccessCopyWith<_SplashLoadedSuccess> get copyWith =>
      __$SplashLoadedSuccessCopyWithImpl<_SplashLoadedSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user),
    @required TResult error(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(User user),
    TResult error(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_SplashInitial value),
    @required TResult loading(_SplashLoading value),
    @required TResult success(_SplashLoadedSuccess value),
    @required TResult error(_SplashLoadedError value),
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
    TResult initial(_SplashInitial value),
    TResult loading(_SplashLoading value),
    TResult success(_SplashLoadedSuccess value),
    TResult error(_SplashLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SplashLoadedSuccess implements SplashState {
  const factory _SplashLoadedSuccess(User user) = _$_SplashLoadedSuccess;

  User get user;
  @JsonKey(ignore: true)
  _$SplashLoadedSuccessCopyWith<_SplashLoadedSuccess> get copyWith;
}

/// @nodoc
abstract class _$SplashLoadedErrorCopyWith<$Res> {
  factory _$SplashLoadedErrorCopyWith(
          _SplashLoadedError value, $Res Function(_SplashLoadedError) then) =
      __$SplashLoadedErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$SplashLoadedErrorCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res>
    implements _$SplashLoadedErrorCopyWith<$Res> {
  __$SplashLoadedErrorCopyWithImpl(
      _SplashLoadedError _value, $Res Function(_SplashLoadedError) _then)
      : super(_value, (v) => _then(v as _SplashLoadedError));

  @override
  _SplashLoadedError get _value => super._value as _SplashLoadedError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_SplashLoadedError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_SplashLoadedError implements _SplashLoadedError {
  const _$_SplashLoadedError([this.message]);

  @override
  final String message;

  @override
  String toString() {
    return 'SplashState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SplashLoadedError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$SplashLoadedErrorCopyWith<_SplashLoadedError> get copyWith =>
      __$SplashLoadedErrorCopyWithImpl<_SplashLoadedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user),
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
    TResult success(User user),
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
    @required TResult initial(_SplashInitial value),
    @required TResult loading(_SplashLoading value),
    @required TResult success(_SplashLoadedSuccess value),
    @required TResult error(_SplashLoadedError value),
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
    TResult initial(_SplashInitial value),
    TResult loading(_SplashLoading value),
    TResult success(_SplashLoadedSuccess value),
    TResult error(_SplashLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SplashLoadedError implements SplashState {
  const factory _SplashLoadedError([String message]) = _$_SplashLoadedError;

  String get message;
  @JsonKey(ignore: true)
  _$SplashLoadedErrorCopyWith<_SplashLoadedError> get copyWith;
}
