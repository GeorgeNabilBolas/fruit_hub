// import 'package:google_sign_in/google_sign_in.dart';
// import '../app_exception.dart';
// import 'exception_mapper.dart';

// class GoogleSignInExceptionMapper implements ExceptionMapper {
//   @override
//   AppException mapException(Object error) {
//     if (error is! GoogleSignInException) {
//       return UnexpectedException('Not a Google Sign-In exception: ${error.toString()}');
//     }

//     switch (error.code) {
//       case GoogleSignInExceptionCode.canceled:
//         return const AuthenticationException('العملية تم إلغاؤها');
//       case GoogleSignInExceptionCode.interrupted:
//         return const AuthenticationException('العملية تم إلغاؤها لسبب غير معروف');
//       case GoogleSignInExceptionCode.clientConfigurationError:
//         return const AuthenticationException('خطأ في تكوين العميل');
//       case GoogleSignInExceptionCode.providerConfigurationError:
//         return const AuthenticationException('خطأ في تكوين المزود');
//       case GoogleSignInExceptionCode.uiUnavailable:
//         return const AuthenticationException('الواجهة غير متاحة');
//       case GoogleSignInExceptionCode.userMismatch:
//         return const AuthenticationException('المستخدم غير مطابق');
//       default:
//         return UnexpectedException(error.description ?? 'Unknown Google Sign-In error');
//     }
//   }
// }
