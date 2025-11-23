import 'package:flutter/material.dart';
import '../../../../Core/constants/app_sizes.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/widgets/custom_svg_image.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/onboarding_model.dart';

class OnboardingPageBody extends StatelessWidget {
  const OnboardingPageBody({
    super.key,
    required this.pageModel,
    this.showSkipButton = false,
    this.onSkip,
  });

  final OnboardingModel pageModel;
  final bool showSkipButton;
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
            height: MediaQuery.of(context).size.height * 0.5,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: kToolbarHeight,
          right: AppSizes.p20,
          child: Visibility(
            visible: showSkipButton,
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            child: GestureDetector(
              onTap: onSkip,
              child: Text(
                S.of(context).skip,
                style: AppTextStyles.text13W500.copyWith(color: AppColor.gray500),
              ),
            ),
          ),
        ),
        Column(
          spacing: AppSizes.p64,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSvgImage(
              path: pageModel.image,
            ),
            Padding(
              padding: AppSizes.paddingSymmetricH38,
              child: Column(
                spacing: AppSizes.p24,
                children: [
                  pageModel.title,
                  Text(
                    pageModel.description,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.text13W500,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
