abstract class AppException implements Exception {
  const AppException();
  
  String get message;
  String get code => runtimeType.toString();
}

class NetworkException extends AppException {
  const NetworkException(this.message);
  
  @override
  final String message;
}

class AuthenticationException extends AppException {
  const AuthenticationException(this.message);
  
  @override
  final String message;
}

class ValidationException extends AppException {
  const ValidationException(this.message);
  
  @override
  final String message;
}

class UnexpectedException extends AppException {
  const UnexpectedException(this.message);
  
  @override
  final String message;
}
