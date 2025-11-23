import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../generated/l10n.dart';
import '../models/onboarding_model.dart';

class OnboardingRepo {
  static List<OnboardingModel> getPages(BuildContext context) => [
    OnboardingModel(
      image: AppAssets.svgOnboardingOne,
      backgroundImage: AppAssets.svgOnboardingVectorOne,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).onboardingOneTitlePartOne,
            style: AppTextStyles.text23W700,
          ),
          const SizedBox(width: 4),
          Text(
            S.of(context).onboardingOneTitlePartTwo,
            style: AppTextStyles.text23W700.copyWith(
              color: AppColor.orange500,
            ),
          ),
          Text(
            S.of(context).onboardingOneTitlePartThree,
            style: AppTextStyles.text23W700.copyWith(
              color: AppColor.green1_500,
            ),
          ),
        ],
      ),
      description: S.of(context).onboardingOneDescription,
    ),
    OnboardingModel(
      image: AppAssets.svgOnboardingTwo,
      backgroundImage: AppAssets.svgOnboardingVectorTwo,
      title: Text(
        S.of(context).onboardingTwoTitle,
        style: AppTextStyles.text23W700,
      ),
      description: S.of(context).onboardingTwoDescription,
    ),
  ];
}
