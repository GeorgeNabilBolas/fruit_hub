import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Core/theme/app_theme.dart';
import 'features/splash/ui/splash_screen.dart';
import 'generated/l10n.dart';
import 'Core/routing/app_routing_handler.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'Core/helpers/app_bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          onGenerateRoute: AppRoutingHandler.generateRoute,
          theme: AppTheme.lightTheme(),
          darkTheme: AppTheme.darkTheme(),

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
      },
    );
  }
}
