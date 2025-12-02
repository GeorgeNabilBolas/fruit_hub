import 'package:google_sign_in/google_sign_in.dart';
import '../app_exception.dart';
import 'exception_mapper.dart';

class GoogleSignInExceptionMapper implements ExceptionMapper {
  @override
  AppException mapException(Object error) {
    if (error is! GoogleSignInException) {
      return UnexpectedException('Not a Google Sign-In exception: ${error.toString()}');
    }

    switch (error.code) {
      case GoogleSignInExceptionCode.canceled:
        return const AuthenticationException('operation was canceled');
      case GoogleSignInExceptionCode.interrupted:
        return const AuthenticationException('operation was canceled for an unknown reason');
      case GoogleSignInExceptionCode.clientConfigurationError:
        return const AuthenticationException('client configuration error');
      case GoogleSignInExceptionCode.providerConfigurationError:
        return const AuthenticationException('provider configuration error');
      case GoogleSignInExceptionCode.uiUnavailable:
        return const AuthenticationException('UI is unavailable');
      case GoogleSignInExceptionCode.userMismatch:
        return const AuthenticationException('user mismatch');
      default:
        return UnexpectedException(error.description ?? 'Unknown Google Sign-In error');
    }
  }
}
