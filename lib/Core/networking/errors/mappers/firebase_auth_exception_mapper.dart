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
        return const AuthenticationException('لا يوجد حساب بهذا البريد الالكتروني');
      case 'wrong-password':
        return const AuthenticationException('كلمة المرور غير صحيحة');
      case 'email-already-in-use':
        return const ValidationException('هذا البريد الالكتروني موجود بالفعل');
      case 'weak-password':
        return const ValidationException('كلمة المرور ضعيفة جدا');
      case 'invalid-email':
        return const ValidationException('البريد الالكتروني غير صحيح');
      case 'invalid-credential':
        return const AuthenticationException(
          'البريد الالكتروني أو كلمة المرور غير صحيحين أو غير موجودين',
        );
      case 'user-disabled':
        return const AuthenticationException('هذا الحساب تم تعطيله');
      case 'too-many-requests':
        return const NetworkException('عدد الطلبات المدخلة اكبر بكثير من المسموح به');
      case 'network-request-failed':
        return const NetworkException('الاتصال بالانترنت ضعيف');
      case 'channel-error':
        return const NetworkException('العملية تم إلغاؤها');

      default:
        return UnexpectedException('حدث خطأ غير متوقع: ${error.code}');
    }
  }
}
