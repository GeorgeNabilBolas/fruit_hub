import 'package:flutter/material.dart';
import '../../../../Core/constants/app_assets.dart';
import '../../../../Core/widgets/custom_svg_image.dart';

class SplashHeader extends StatelessWidget {
  const SplashHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 0,
      left: 0,
      child: CustomSvgImage(
        path: AppAssets.svgSplashHeader,
      ),
    );
  }
}
