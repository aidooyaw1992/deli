import 'package:flutter/foundation.dart';

class AppError{
  final AppErrorType appErrorType;
  final dynamic message;
  AppError({@required this.appErrorType, this.message});
}
enum AppErrorType { api, network, timeout }