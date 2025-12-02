import 'package:firebase_auth/firebase_auth.dart';
import '../app_exception.dart';
import 'exception_mapper.dart';

class FirebaseAuthExceptionMapper implements ExceptionMapper {
  @override
  AppException mapException(Object error) {
    if (error is! FirebaseAuthException) {
      return UnexpectedException('Not a Firebase exception: ${error.toString()}');
    }

    switch (error.code) {
      case 'user-not-found':
        return const AuthenticationException('no user found with this email');
      case 'wrong-password':
        return const AuthenticationException('wrong password');
      case 'email-already-in-use':
        return const ValidationException('this email is already in use');
      case 'weak-password':
        return const ValidationException('password is too weak');
      case 'invalid-email':
        return const ValidationException('invalid email');
      case 'invalid-credential':
        return const AuthenticationException(
          'email or password is invalid or does not exist',
        );
      case 'user-disabled':
        return const AuthenticationException('this account is disabled');
      case 'too-many-requests':
        return const NetworkException('too many requests');
      case 'network-request-failed':
        return const NetworkException('no internet connection');
      case 'channel-error':
        return const NetworkException('operation was canceled');

      default:
        return UnexpectedException('an unexpected error occurred: ${error.code}');
    }
  }
}
