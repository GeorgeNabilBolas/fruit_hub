import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'Core/constants/app_colors.dart';
import 'Core/constants/app_text_styles.dart';
import 'Core/theme/app_theme.dart';
import 'features/splash/ui/splash_screen.dart';
import 'generated/l10n.dart';
import 'Core/routing/app_routing_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRoutingHandler.generateRoute,
      theme: AppTheme.systemTheme(context),
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: 'FruitHUB',
      supportedLocales: S.delegate.supportedLocales,
      home: const SplashScreen(),
    );
  }
}
