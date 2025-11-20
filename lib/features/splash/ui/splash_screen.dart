import 'package:flutter/material.dart';
import '../../../Core/constants/app_durations.dart';
import '../../../Core/routing/app_routes.dart';
import 'widgets/splash_header.dart';
import 'widgets/splash_main.dart';
import 'widgets/splash_footer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await AppDurations.delaySec3();
    if (mounted) {
      Navigator.of(context).pushReplacementNamed(AppRoutes.onboardingRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SplashHeader(),
          SplashMain(),
          SplashFooter(),
        ],
      ),
    );
  }
}
