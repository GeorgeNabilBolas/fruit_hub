import 'dart:io';

import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      colorScheme: const ColorScheme.light(),
      scaffoldBackgroundColor: AppColor.white,
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      colorScheme: const ColorScheme.dark(),
      scaffoldBackgroundColor: AppColor.black,
    );
  }

  static ThemeData systemTheme(BuildContext context) {
    switch (MediaQuery.of(context).platformBrightness) {
      case .dark:
        return darkTheme();
      case .light:
        return lightTheme();
    }
  }
}
