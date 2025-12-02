import 'dart:io';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'app_exception.dart';
import 'mappers/dio_exception_mapper.dart';
import 'mappers/firebase_auth_exception_mapper.dart';
import 'mappers/google_signin_exception_mapper.dart';

class ExceptionHandler {
  ExceptionHandler();

  static AppException handleException(Object error) {
    switch (error.runtimeType) {
      case SocketException:
        return const NetworkException('no internet connection');
      case FormatException:
        return const ValidationException('an error occurred in the data format');
      case DioException:
        return DioExceptionMapper().mapException(error);
      case FirebaseAuthException:
        return FirebaseAuthExceptionMapper().mapException(error);
      case GoogleSignInException:
        return GoogleSignInExceptionMapper().mapException(error);
      default:
        return UnexpectedException('an unexpected error occurred: ${error.toString()}');
    }
  }
}
