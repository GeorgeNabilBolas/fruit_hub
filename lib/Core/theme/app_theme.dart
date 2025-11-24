import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      primaryColor: AppColor.green1_500,
      scaffoldBackgroundColor: AppColor.white,
      splashColor: AppColor.green1_500.withValues(alpha: 0.1),
      highlightColor: AppColor.green1_500.withValues(alpha: 0.1),
      hoverColor: AppColor.green1_500.withValues(alpha: 0.05),
      colorScheme: const ColorScheme.light(
        primary: AppColor.green1_500,
        secondary: AppColor.green1_500,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColor.green1_500,
          splashFactory: InkRipple.splashFactory,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.green1_500,
          foregroundColor: AppColor.white,
          splashFactory: InkRipple.splashFactory,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      primaryColor: AppColor.green1_500,
      scaffoldBackgroundColor: AppColor.black,
      splashColor: AppColor.green1_500.withValues(alpha: 0.1),
      highlightColor: AppColor.green1_500.withValues(alpha: 0.1),
      hoverColor: AppColor.green1_500.withValues(alpha: 0.05),
      colorScheme: const ColorScheme.dark(
        primary: AppColor.green1_500,
        secondary: AppColor.green1_500,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColor.green1_500,
          splashFactory: InkRipple.splashFactory,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.green1_500,
          foregroundColor: AppColor.white,
          splashFactory: InkRipple.splashFactory,
        ),
      ),
    );
  }

  static ThemeData systemTheme(BuildContext context) {
    switch (MediaQuery.of(context).platformBrightness) {
      case Brightness.dark:
        return darkTheme();
      case Brightness.light:
        return lightTheme();
    }
  }
}
