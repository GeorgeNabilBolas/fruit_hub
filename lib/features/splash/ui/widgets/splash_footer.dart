import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/custom_svg_image.dart';

class SplashFooter extends StatelessWidget {
  const SplashFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: CustomSvgImage(
        path: AppAssets.svgSplashFooter,
        fit: BoxFit.fill,
      ),
    );
  }
}
