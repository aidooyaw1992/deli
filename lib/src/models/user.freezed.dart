// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {String gender,
      Name name,
      String email,
      String phone,
      Picture picture,
      Login login}) {
    return _User(
      gender: gender,
      name: name,
      email: email,
      phone: phone,
      picture: picture,
      login: login,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get gender;
  Name get name;
  String get email;
  String get phone;
  Picture get picture;
  Login get login;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String gender,
      Name name,
      String email,
      String phone,
      Picture picture,
      Login login});

  $NameCopyWith<$Res> get name;
  $PictureCopyWith<$Res> get picture;
  $LoginCopyWith<$Res> get login;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object gender = freezed,
    Object name = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object picture = freezed,
    Object login = freezed,
  }) {
    return _then(_value.copyWith(
      gender: gender == freezed ? _value.gender : gender as String,
      name: name == freezed ? _value.name : name as Name,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      picture: picture == freezed ? _value.picture : picture as Picture,
      login: login == freezed ? _value.login : login as Login,
    ));
  }

  @override
  $NameCopyWith<$Res> get name {
    if (_value.name == null) {
      return null;
    }
    return $NameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $PictureCopyWith<$Res> get picture {
    if (_value.picture == null) {
      return null;
    }
    return $PictureCopyWith<$Res>(_value.picture, (value) {
      return _then(_value.copyWith(picture: value));
    });
  }

  @override
  $LoginCopyWith<$Res> get login {
    if (_value.login == null) {
      return null;
    }
    return $LoginCopyWith<$Res>(_value.login, (value) {
      return _then(_value.copyWith(login: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String gender,
      Name name,
      String email,
      String phone,
      Picture picture,
      Login login});

  @override
  $NameCopyWith<$Res> get name;
  @override
  $PictureCopyWith<$Res> get picture;
  @override
  $LoginCopyWith<$Res> get login;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object gender = freezed,
    Object name = freezed,
    Object email = freezed,
    Object phone = freezed,
    Object picture = freezed,
    Object login = freezed,
  }) {
    return _then(_User(
      gender: gender == freezed ? _value.gender : gender as String,
      name: name == freezed ? _value.name : name as Name,
      email: email == freezed ? _value.email : email as String,
      phone: phone == freezed ? _value.phone : phone as String,
      picture: picture == freezed ? _value.picture : picture as Picture,
      login: login == freezed ? _value.login : login as Login,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  _$_User(
      {this.gender,
      this.name,
      this.email,
      this.phone,
      this.picture,
      this.login});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String gender;
  @override
  final Name name;
  @override
  final String email;
  @override
  final String phone;
  @override
  final Picture picture;
  @override
  final Login login;

  @override
  String toString() {
    return 'User(gender: $gender, name: $name, email: $email, phone: $phone, picture: $picture, login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(login);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  factory _User(
      {String gender,
      Name name,
      String email,
      String phone,
      Picture picture,
      Login login}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get gender;
  @override
  Name get name;
  @override
  String get email;
  @override
  String get phone;
  @override
  Picture get picture;
  @override
  Login get login;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}

Login _$LoginFromJson(Map<String, dynamic> json) {
  return _Login.fromJson(json);
}

/// @nodoc
class _$LoginTearOff {
  const _$LoginTearOff();

// ignore: unused_element
  _Login call({String username, String password}) {
    return _Login(
      username: username,
      password: password,
    );
  }

// ignore: unused_element
  Login fromJson(Map<String, Object> json) {
    return Login.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Login = _$LoginTearOff();

/// @nodoc
mixin _$Login {
  String get username;
  String get password;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LoginCopyWith<Login> get copyWith;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginCopyWithImpl<$Res> implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  final Login _value;
  // ignore: unused_field
  final $Res Function(Login) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_Login(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Login implements _Login {
  _$_Login({this.username, this.password});

  factory _$_Login.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginFromJson(json);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'Login(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Login &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginCopyWith<_Login> get copyWith =>
      __$LoginCopyWithImpl<_Login>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginToJson(this);
  }
}

abstract class _Login implements Login {
  factory _Login({String username, String password}) = _$_Login;

  factory _Login.fromJson(Map<String, dynamic> json) = _$_Login.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$LoginCopyWith<_Login> get copyWith;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
class _$NameTearOff {
  const _$NameTearOff();

// ignore: unused_element
  _Name call(
      {@JsonKey(name: "first") String firstName,
      @JsonKey(name: "last") String lastName}) {
    return _Name(
      firstName: firstName,
      lastName: lastName,
    );
  }

// ignore: unused_element
  Name fromJson(Map<String, Object> json) {
    return Name.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Name = _$NameTearOff();

/// @nodoc
mixin _$Name {
  @JsonKey(name: "first")
  String get firstName;
  @JsonKey(name: "last")
  String get lastName;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "first") String firstName,
      @JsonKey(name: "last") String lastName});
}

/// @nodoc
class _$NameCopyWithImpl<$Res> implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  final Name _value;
  // ignore: unused_field
  final $Res Function(Name) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

/// @nodoc
abstract class _$NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$NameCopyWith(_Name value, $Res Function(_Name) then) =
      __$NameCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "first") String firstName,
      @JsonKey(name: "last") String lastName});
}

/// @nodoc
class __$NameCopyWithImpl<$Res> extends _$NameCopyWithImpl<$Res>
    implements _$NameCopyWith<$Res> {
  __$NameCopyWithImpl(_Name _value, $Res Function(_Name) _then)
      : super(_value, (v) => _then(v as _Name));

  @override
  _Name get _value => super._value as _Name;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_Name(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Name implements _Name {
  _$_Name(
      {@JsonKey(name: "first") this.firstName,
      @JsonKey(name: "last") this.lastName});

  factory _$_Name.fromJson(Map<String, dynamic> json) =>
      _$_$_NameFromJson(json);

  @override
  @JsonKey(name: "first")
  final String firstName;
  @override
  @JsonKey(name: "last")
  final String lastName;

  @override
  String toString() {
    return 'Name(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Name &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName);

  @JsonKey(ignore: true)
  @override
  _$NameCopyWith<_Name> get copyWith =>
      __$NameCopyWithImpl<_Name>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NameToJson(this);
  }
}

abstract class _Name implements Name {
  factory _Name(
      {@JsonKey(name: "first") String firstName,
      @JsonKey(name: "last") String lastName}) = _$_Name;

  factory _Name.fromJson(Map<String, dynamic> json) = _$_Name.fromJson;

  @override
  @JsonKey(name: "first")
  String get firstName;
  @override
  @JsonKey(name: "last")
  String get lastName;
  @override
  @JsonKey(ignore: true)
  _$NameCopyWith<_Name> get copyWith;
}

Picture _$PictureFromJson(Map<String, dynamic> json) {
  return _Picture.fromJson(json);
}

/// @nodoc
class _$PictureTearOff {
  const _$PictureTearOff();

// ignore: unused_element
  _Picture call({String large, String medium, String thumbnail}) {
    return _Picture(
      large: large,
      medium: medium,
      thumbnail: thumbnail,
    );
  }

// ignore: unused_element
  Picture fromJson(Map<String, Object> json) {
    return Picture.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Picture = _$PictureTearOff();

/// @nodoc
mixin _$Picture {
  String get large;
  String get medium;
  String get thumbnail;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PictureCopyWith<Picture> get copyWith;
}

/// @nodoc
abstract class $PictureCopyWith<$Res> {
  factory $PictureCopyWith(Picture value, $Res Function(Picture) then) =
      _$PictureCopyWithImpl<$Res>;
  $Res call({String large, String medium, String thumbnail});
}

/// @nodoc
class _$PictureCopyWithImpl<$Res> implements $PictureCopyWith<$Res> {
  _$PictureCopyWithImpl(this._value, this._then);

  final Picture _value;
  // ignore: unused_field
  final $Res Function(Picture) _then;

  @override
  $Res call({
    Object large = freezed,
    Object medium = freezed,
    Object thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      large: large == freezed ? _value.large : large as String,
      medium: medium == freezed ? _value.medium : medium as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
    ));
  }
}

/// @nodoc
abstract class _$PictureCopyWith<$Res> implements $PictureCopyWith<$Res> {
  factory _$PictureCopyWith(_Picture value, $Res Function(_Picture) then) =
      __$PictureCopyWithImpl<$Res>;
  @override
  $Res call({String large, String medium, String thumbnail});
}

/// @nodoc
class __$PictureCopyWithImpl<$Res> extends _$PictureCopyWithImpl<$Res>
    implements _$PictureCopyWith<$Res> {
  __$PictureCopyWithImpl(_Picture _value, $Res Function(_Picture) _then)
      : super(_value, (v) => _then(v as _Picture));

  @override
  _Picture get _value => super._value as _Picture;

  @override
  $Res call({
    Object large = freezed,
    Object medium = freezed,
    Object thumbnail = freezed,
  }) {
    return _then(_Picture(
      large: large == freezed ? _value.large : large as String,
      medium: medium == freezed ? _value.medium : medium as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Picture implements _Picture {
  _$_Picture({this.large, this.medium, this.thumbnail});

  factory _$_Picture.fromJson(Map<String, dynamic> json) =>
      _$_$_PictureFromJson(json);

  @override
  final String large;
  @override
  final String medium;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'Picture(large: $large, medium: $medium, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Picture &&
            (identical(other.large, large) ||
                const DeepCollectionEquality().equals(other.large, large)) &&
            (identical(other.medium, medium) ||
                const DeepCollectionEquality().equals(other.medium, medium)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(large) ^
      const DeepCollectionEquality().hash(medium) ^
      const DeepCollectionEquality().hash(thumbnail);

  @JsonKey(ignore: true)
  @override
  _$PictureCopyWith<_Picture> get copyWith =>
      __$PictureCopyWithImpl<_Picture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PictureToJson(this);
  }
}

abstract class _Picture implements Picture {
  factory _Picture({String large, String medium, String thumbnail}) =
      _$_Picture;

  factory _Picture.fromJson(Map<String, dynamic> json) = _$_Picture.fromJson;

  @override
  String get large;
  @override
  String get medium;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$PictureCopyWith<_Picture> get copyWith;
}
