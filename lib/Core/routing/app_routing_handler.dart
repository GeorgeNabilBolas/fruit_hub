import 'package:flutter/material.dart';

import '../../features/auth/ui/auth_screen.dart';
import '../../features/onboarding/ui/onboarding_view.dart';
import '../../features/splash/ui/splash_screen.dart';
import 'app_routes.dart';

class AppRoutingHandler {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case AppRoutes.authRoute:
        return MaterialPageRoute(builder: (_) => const AuthScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
