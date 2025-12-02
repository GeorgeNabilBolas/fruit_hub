import 'package:dio/dio.dart';
import '../app_exception.dart';
import '../models/error_model.dart';
import 'exception_mapper.dart';

class DioExceptionMapper implements ExceptionMapper {
  @override
  AppException mapException(Object error) {
    if (error is! DioException) {
      return UnexpectedException('Not a Dio exception: ${error.toString()}');
    }

    switch (error.type) {
      case DioExceptionType.cancel:
        return const NetworkException('connection to server was canceled');
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkException('connection to server was timed out');
      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        return const NetworkException('no internet connection');
      case DioExceptionType.badResponse:
        return _handleBadResponse(error.response);
      case DioExceptionType.sendTimeout:
        return const NetworkException('send timeout');
      case DioExceptionType.badCertificate:
        return const AuthenticationException('Bad certificate');
      default:
        return UnexpectedException(error.toString());
    }
  }

  AppException _handleBadResponse(Response? response) {
    if (response?.data == null) {
      return UnexpectedException('No response data');
    }

    final statusCode = response?.statusCode ?? 0;

    switch (statusCode) {
      case 400:
        return const ValidationException('bad request');
      case 401:
      case 403:
        return AuthenticationException(_extractErrorMessage(response));
      case 404:
        return NetworkException(_extractErrorMessage(response));
      case 408:
        return const NetworkException('connection to server was timed out');
      case 409:
        return const ValidationException('error due to conflict');
      case 422:
        return ValidationException(_extractErrorMessage(response));
      case 500:
        return const NetworkException('server error');
      case 503:
        return const NetworkException('service unavailable');
      default:
        return NetworkException('Received invalid status code: $statusCode');
    }
  }

  String _extractErrorMessage(Response? response) {
    if (response?.data == null) return 'Unknown error occurred';

    try {
      if (response!.data is List) {
        final errors = (response.data as List)
            .map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
            .map((e) => e.message)
            .join(', ');
        return errors.isNotEmpty ? errors : 'Unknown error occurred';
      }
    } catch (_) {}

    return 'Unknown error occurred';
  }
}
