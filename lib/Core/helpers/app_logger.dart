import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

class AppLogger {
  AppLogger._();

  // ANSI color codes
  static const String _reset = '\x1B[0m';
  static const String _red = '\x1B[31m';
  static const String _green = '\x1B[32m';
  static const String _yellow = '\x1B[33m';
  static const String _blue = '\x1B[34m';

  static void debug(String message) {
    if (kDebugMode) {
      developer.log('$_blue[DEBUG] $message$_reset', name: 'AppLogger');
    }
  }

  static void info(String message) {
    if (kDebugMode) {
      developer.log('$_green[INFO] $message$_reset', name: 'AppLogger');
    }
  }

  static void warning(String message) {
    if (kDebugMode) {
      developer.log('$_yellow[WARNING] $message$_reset', name: 'AppLogger');
    }
  }

  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    if (kDebugMode) {
      developer.log(
        '$_red[ERROR] $message$_reset',
        name: 'AppLogger',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
