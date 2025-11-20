import 'package:flutter/material.dart';
import '../../../../Core/constants/app_assets.dart';
import '../../../../Core/widgets/custom_svg_image.dart';

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
