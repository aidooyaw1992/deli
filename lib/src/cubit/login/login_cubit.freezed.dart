// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _LoginInitial initial() {
    return const _LoginInitial();
  }

// ignore: unused_element
  _LoginLoading loading() {
    return const _LoginLoading();
  }

// ignore: unused_element
  _LoginLoadedSuccess success(User user) {
    return _LoginLoadedSuccess(
      user,
    );
  }

// ignore: unused_element
  _LoginLoadedError error(AppError error) {
    return _LoginLoadedError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user),
    @required TResult error(AppError error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(User user),
    TResult error(AppError error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LoginInitial value),
    @required TResult loading(_LoginLoading value),
    @required TResult success(_LoginLoadedSuccess value),
    @required TResult error(_LoginLoadedError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_LoginInitial value),
    TResult loading(_LoginLoading value),
    TResult success(_LoginLoadedSuccess value),
    TResult error(_LoginLoadedError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$LoginInitialCopyWith<$Res> {
  factory _$LoginInitialCopyWith(
          _LoginInitial value, $Res Function(_LoginInitial) then) =
      __$LoginInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginInitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginInitialCopyWith<$Res> {
  __$LoginInitialCopyWithImpl(
      _LoginInitial _value, $Res Function(_LoginInitial) _then)
      : super(_value, (v) => _then(v as _LoginInitial));

  @override
  _LoginInitial get _value => super._value as _LoginInitial;
}

/// @nodoc
class _$_LoginInitial implements _LoginInitial {
  const _$_LoginInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user),
    @required TResult error(AppError error),
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
    TResult error(AppError error),
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
    @required TResult initial(_LoginInitial value),
    @required TResult loading(_LoginLoading value),
    @required TResult success(_LoginLoadedSuccess value),
    @required TResult error(_LoginLoadedError value),
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
    TResult initial(_LoginInitial value),
    TResult loading(_LoginLoading value),
    TResult success(_LoginLoadedSuccess value),
    TResult error(_LoginLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginInitial implements LoginState {
  const factory _LoginInitial() = _$_LoginInitial;
}

/// @nodoc
abstract class _$LoginLoadingCopyWith<$Res> {
  factory _$LoginLoadingCopyWith(
          _LoginLoading value, $Res Function(_LoginLoading) then) =
      __$LoginLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoginLoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginLoadingCopyWith<$Res> {
  __$LoginLoadingCopyWithImpl(
      _LoginLoading _value, $Res Function(_LoginLoading) _then)
      : super(_value, (v) => _then(v as _LoginLoading));

  @override
  _LoginLoading get _value => super._value as _LoginLoading;
}

/// @nodoc
class _$_LoginLoading implements _LoginLoading {
  const _$_LoginLoading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoginLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user),
    @required TResult error(AppError error),
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
    TResult error(AppError error),
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
    @required TResult initial(_LoginInitial value),
    @required TResult loading(_LoginLoading value),
    @required TResult success(_LoginLoadedSuccess value),
    @required TResult error(_LoginLoadedError value),
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
    TResult initial(_LoginInitial value),
    TResult loading(_LoginLoading value),
    TResult success(_LoginLoadedSuccess value),
    TResult error(_LoginLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoginLoading implements LoginState {
  const factory _LoginLoading() = _$_LoginLoading;
}

/// @nodoc
abstract class _$LoginLoadedSuccessCopyWith<$Res> {
  factory _$LoginLoadedSuccessCopyWith(
          _LoginLoadedSuccess value, $Res Function(_LoginLoadedSuccess) then) =
      __$LoginLoadedSuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$LoginLoadedSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginLoadedSuccessCopyWith<$Res> {
  __$LoginLoadedSuccessCopyWithImpl(
      _LoginLoadedSuccess _value, $Res Function(_LoginLoadedSuccess) _then)
      : super(_value, (v) => _then(v as _LoginLoadedSuccess));

  @override
  _LoginLoadedSuccess get _value => super._value as _LoginLoadedSuccess;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_LoginLoadedSuccess(
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
class _$_LoginLoadedSuccess implements _LoginLoadedSuccess {
  const _$_LoginLoadedSuccess(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'LoginState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginLoadedSuccess &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$LoginLoadedSuccessCopyWith<_LoginLoadedSuccess> get copyWith =>
      __$LoginLoadedSuccessCopyWithImpl<_LoginLoadedSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user),
    @required TResult error(AppError error),
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
    TResult error(AppError error),
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
    @required TResult initial(_LoginInitial value),
    @required TResult loading(_LoginLoading value),
    @required TResult success(_LoginLoadedSuccess value),
    @required TResult error(_LoginLoadedError value),
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
    TResult initial(_LoginInitial value),
    TResult loading(_LoginLoading value),
    TResult success(_LoginLoadedSuccess value),
    TResult error(_LoginLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LoginLoadedSuccess implements LoginState {
  const factory _LoginLoadedSuccess(User user) = _$_LoginLoadedSuccess;

  User get user;
  @JsonKey(ignore: true)
  _$LoginLoadedSuccessCopyWith<_LoginLoadedSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoginLoadedErrorCopyWith<$Res> {
  factory _$LoginLoadedErrorCopyWith(
          _LoginLoadedError value, $Res Function(_LoginLoadedError) then) =
      __$LoginLoadedErrorCopyWithImpl<$Res>;
  $Res call({AppError error});
}

/// @nodoc
class __$LoginLoadedErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginLoadedErrorCopyWith<$Res> {
  __$LoginLoadedErrorCopyWithImpl(
      _LoginLoadedError _value, $Res Function(_LoginLoadedError) _then)
      : super(_value, (v) => _then(v as _LoginLoadedError));

  @override
  _LoginLoadedError get _value => super._value as _LoginLoadedError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_LoginLoadedError(
      error == freezed ? _value.error : error as AppError,
    ));
  }
}

/// @nodoc
class _$_LoginLoadedError implements _LoginLoadedError {
  const _$_LoginLoadedError(this.error) : assert(error != null);

  @override
  final AppError error;

  @override
  String toString() {
    return 'LoginState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginLoadedError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$LoginLoadedErrorCopyWith<_LoginLoadedError> get copyWith =>
      __$LoginLoadedErrorCopyWithImpl<_LoginLoadedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult success(User user),
    @required TResult error(AppError error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult success(User user),
    TResult error(AppError error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_LoginInitial value),
    @required TResult loading(_LoginLoading value),
    @required TResult success(_LoginLoadedSuccess value),
    @required TResult error(_LoginLoadedError value),
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
    TResult initial(_LoginInitial value),
    TResult loading(_LoginLoading value),
    TResult success(_LoginLoadedSuccess value),
    TResult error(_LoginLoadedError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _LoginLoadedError implements LoginState {
  const factory _LoginLoadedError(AppError error) = _$_LoginLoadedError;

  AppError get error;
  @JsonKey(ignore: true)
  _$LoginLoadedErrorCopyWith<_LoginLoadedError> get copyWith;
}
