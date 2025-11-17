import 'package:flutter/material.dart';

import '../../features/splash/ui/splash_screen.dart';
import 'app_routes.dart';

class AppRoutingHandler {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}
