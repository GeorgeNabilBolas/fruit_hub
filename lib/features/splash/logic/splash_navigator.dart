import 'package:flutter/material.dart';

import '../../../Core/routing/app_routes.dart';

class SplashNavigator {
  static void toOnboarding(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));
    if (context.mounted) {
      Navigator.of(context).pushNamed(AppRoutes.onboardingRoute);
    }
  }
}
