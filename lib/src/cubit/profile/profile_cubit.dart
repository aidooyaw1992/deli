import 'package:bloc/bloc.dart';
import 'package:delivast/src/services/api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  
  ProfileCubit() : super(ProfileState.initial());

  logout() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.clear();
    emit(ProfileState.success());
  }
}

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _ProfileInitial;
  const factory ProfileState.loading() = _ProfileLoading;
  const factory ProfileState.success() = _ProfileLoadedSuccess;
  const factory ProfileState.error([String message]) = _ProfileLoadedError;
}
