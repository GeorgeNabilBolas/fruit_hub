import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../logic/splash_navigator.dart';
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
    SchedulerBinding.instance.addPostFrameCallback((_) {
      SplashNavigator.toOnboarding(context);
    });
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
