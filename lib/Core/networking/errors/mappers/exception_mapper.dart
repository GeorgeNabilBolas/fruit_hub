import '../app_exception.dart';

abstract class ExceptionMapper {
  AppException mapException(Object error);
}
