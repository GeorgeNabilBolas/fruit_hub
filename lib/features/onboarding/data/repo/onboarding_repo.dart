import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import '../models/onboarding_model.dart';

class OnboardingRepo {
  static List<OnboardingModel> getPages() {
    return [
      OnboardingModel(
        image: AppAssets.svgOnboardingOne,
        backgroundImage: AppAssets.svgOnboardingVectorOne,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.current.onboardingOneTitle.substring(0, 13),
              style: AppTextStyles.text23W700,
            ),
            const SizedBox(width: 4),
            Text(
              S.current.onboardingOneTitle.substring(18, 21),
              style: AppTextStyles.text23W700.copyWith(
                color: AppColor.orange500,
              ),
            ),
            Text(
              S.current.onboardingOneTitle.substring(13, 18),
              style: AppTextStyles.text23W700.copyWith(
                color: AppColor.green1_500,
              ),
            ),
          ],
        ),
        description: S.current.onboardingOneDescription,
      ),
      OnboardingModel(
        image: AppAssets.svgOnboardingTwo,
        backgroundImage: AppAssets.svgOnboardingVectorTwo,
        title: Text(
          S.current.onboardingTwoTitle,
          style: AppTextStyles.text23W700,
        ),
        description: S.current.onboardingTwoDescription,
      ),
    ];
  }
}
