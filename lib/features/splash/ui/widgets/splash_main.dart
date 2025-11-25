import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/custom_svg_image.dart';

class SplashMain extends StatelessWidget {
  const SplashMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomSvgImage(
        path: AppAssets.svgSplashMain,
      ),
    );
  }
}
