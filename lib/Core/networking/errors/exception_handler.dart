import 'dart:io';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'app_exception.dart';
import 'mappers/dio_exception_mapper.dart';
import 'mappers/firebase_auth_exception_mapper.dart';
import 'mappers/google_signin_exception_mapper.dart';

class ExceptionHandler {
  ExceptionHandler({
    DioExceptionMapper? dioMapper,
    FirebaseAuthExceptionMapper? firebaseMapper,
    GoogleSignInExceptionMapper? googleMapper,
  })  : _dioMapper = dioMapper ?? DioExceptionMapper(),
        _firebaseMapper = firebaseMapper ?? FirebaseAuthExceptionMapper(),
        _googleMapper = googleMapper ?? GoogleSignInExceptionMapper();

  final DioExceptionMapper _dioMapper;
  final FirebaseAuthExceptionMapper _firebaseMapper;
  final GoogleSignInExceptionMapper _googleMapper;

  /// Single entry point for all exception handling
  AppException handleException(Object error) {
    // Handle common exceptions first
    if (error is SocketException) {
      return const NetworkException('لا يوجد اتصال بالإنترنت');
    }

    if (error is FormatException) {
      return const ValidationException('حدث خطأ في تنسيق البيانات');
    }

    // Handle type conversion errors
    if (error.toString().contains('is not a subtype of')) {
      return ValidationException('لا يمكن معالجة البيانات: ${error.toString()}');
    }

    // Delegate to specific mappers
    if (error is DioException) {
      return _dioMapper.mapException(error);
    }

    if (error is FirebaseAuthException) {
      return _firebaseMapper.mapException(error);
    }

    if (error is GoogleSignInException) {
      return _googleMapper.mapException(error);
    }

    // Default fallback
    return UnexpectedException('حدث خطأ غير متوقع: ${error.toString()}');
  }
}
