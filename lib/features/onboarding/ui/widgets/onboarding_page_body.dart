import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/custom_svg_image.dart';
import '../../data/models/onboarding_model.dart';
import 'onboarding_text_content.dart';
import 'onboarding_skip_button.dart';

class OnboardingPageBody extends StatelessWidget {
  const OnboardingPageBody({
    super.key,
    required this.pageModel,
    this.onSkip,
  });

  final OnboardingModel pageModel;
  final VoidCallback? onSkip;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: CustomSvgImage(
            path: pageModel.backgroundImage,
            height: 396.h,
            fit: BoxFit.fill,
          ),
        ),
        OnboardingSkipButton(onSkip: onSkip),
        Column(
          spacing: 64.h,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSvgImage(
              path: pageModel.image,
              fit: BoxFit.contain,
            ),
            OnboardingTextContent(
              title: pageModel.title,
              description: pageModel.description,
            ),
          ],
        ),
      ],
    );
  }
}
