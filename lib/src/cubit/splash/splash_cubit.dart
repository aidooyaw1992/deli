import 'dart:convert';

import 'package:delivast/src/models/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState.initial());

  checkUser() async {
    emit(SplashState.loading());
    await Future.delayed(Duration(seconds: 2));
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey("USER")) {
      dynamic rawData = prefs.getString("USER");
      User user = User.fromJson(jsonDecode(rawData));
      emit(SplashState.success(user));
      return user;
    }
    emit(SplashState.success(User()));
  }
}

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = _SplashInitial;
  const factory SplashState.loading() = _SplashLoading;
  const factory SplashState.success(User user) = _SplashLoadedSuccess;
  const factory SplashState.error([String message]) = _SplashLoadedError;
}
