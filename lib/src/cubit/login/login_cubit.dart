import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:delivast/src/models/app_error.dart';

import 'package:delivast/src/models/user.dart';
import 'package:delivast/src/services/api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final ApiClient client;
  LoginCubit({@required this.client}) : super(LoginState.initial());

  login({@required String email, @required String password}) async {
    emit(LoginState.loading());
    final userEither = await client.login(email, password);
    return userEither.fold(
      (error) => emit(LoginState.error(error)),
      (user){
        _saveUser(user); //saving user obj to sharedpreference
        emit(LoginState.success(user));
      },
    );
  }

  void _saveUser(User user) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String rawData = jsonEncode(user.toJson());
    print(rawData);
    _prefs.setString("USER", rawData);
  }
}

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = _LoginInitial;
  const factory LoginState.loading() = _LoginLoading;
  const factory LoginState.success(User user) = _LoginLoadedSuccess;
  const factory LoginState.error(AppError error) = _LoginLoadedError;
}
