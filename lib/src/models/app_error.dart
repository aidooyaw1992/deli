import 'package:flutter/foundation.dart';

class AppError {
  final AppErrorType appErrorType;
  final dynamic message;
  AppError({@required this.appErrorType, this.message});

  @override
  String toString() => 'AppError(appErrorType: $appErrorType, message: $message)';
}
enum AppErrorType { api, network, timeout }