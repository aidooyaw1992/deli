// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    gender: json['gender'] as String,
    name: json['name'] == null
        ? null
        : Name.fromJson(json['name'] as Map<String, dynamic>),
    email: json['email'] as String,
    phone: json['phone'] as String,
    picture: json['picture'] == null
        ? null
        : Picture.fromJson(json['picture'] as Map<String, dynamic>),
    login: json['login'] == null
        ? null
        : Login.fromJson(json['login'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'picture': instance.picture,
      'login': instance.login,
    };

_$_Login _$_$_LoginFromJson(Map<String, dynamic> json) {
  return _$_Login(
    username: json['username'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$_$_LoginToJson(_$_Login instance) => <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$_Name _$_$_NameFromJson(Map<String, dynamic> json) {
  return _$_Name(
    firstName: json['first'] as String,
    lastName: json['last'] as String,
  );
}

Map<String, dynamic> _$_$_NameToJson(_$_Name instance) => <String, dynamic>{
      'first': instance.firstName,
      'last': instance.lastName,
    };

_$_Picture _$_$_PictureFromJson(Map<String, dynamic> json) {
  return _$_Picture(
    large: json['large'] as String,
    medium: json['medium'] as String,
    thumbnail: json['thumbnail'] as String,
  );
}

Map<String, dynamic> _$_$_PictureToJson(_$_Picture instance) =>
    <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
