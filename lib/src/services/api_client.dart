import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:delivast/src/models/user.dart';
import '../models/app_error.dart';

class ApiClient {
  final http.Client _client;

  ApiClient(this._client);

  Future<Either<AppError, User>> login(String email, password) async {
    try {
      final response = await _client
          .get("https://randomuser.me/api")
          .timeout(Duration(seconds: 15));
      var parsed = jsonDecode(response.body)['results'][0];
      var user = User.fromJson(parsed);
      return Right(user);
    } on SocketException {
      return Left(AppError(appErrorType: AppErrorType.network));
    } on TimeoutException {
      return Left(AppError(appErrorType: AppErrorType.timeout));
    } catch (e) {
      return Left(
        AppError(
          appErrorType: AppErrorType.api,
          message: e.toString(),
        ),
      );
    }
  }
}
