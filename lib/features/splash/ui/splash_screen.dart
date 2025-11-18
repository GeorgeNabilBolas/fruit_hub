import 'package:flutter/material.dart';
import '../../../Core/constants/app_assets.dart';
import '../../../Core/widgets/custom_svg_image.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: CustomSvgImage(
              path: AppAssets.svgSplashHeader,
            ),
          ),
          Center(
            child: CustomSvgImage(
              path: AppAssets.svgSplashMain,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustomSvgImage(
              path: AppAssets.svgSplashFooter,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
