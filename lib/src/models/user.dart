import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  factory User({
    String gender,
    Name name,
    String email,
    String phone,
    Picture picture,
    Login login,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) =>_$UserFromJson(json);
}

@freezed
abstract class Login with _$Login {
  factory Login({
    String username,
    String password,
  }) = _Login;
  factory Login.fromJson(Map<String, dynamic> json) =>_$LoginFromJson(json);
}

@freezed
abstract class Name with _$Name {
  factory Name({
    @JsonKey(name: "first") String firstName,
    @JsonKey(name: "last") String lastName,
  }) = _Name;
  factory Name.fromJson(Map<String, dynamic> json) =>_$NameFromJson(json);
}

@freezed
abstract class Picture with _$Picture{
  factory Picture({
    String large,
    String medium,
    String thumbnail
  }) = _Picture;
  factory Picture.fromJson(Map<String, dynamic> json) =>_$PictureFromJson(json);
}