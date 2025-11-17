import 'package:flutter/material.dart';
import '../../../Core/constants/app_assets.dart';
import '../../../Core/widgets/custom_svg_image.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomSvgImage(
              path: AppAssets.svgSplashMain,
            ),
          ],
        ),
      ),
    );
  }
}
