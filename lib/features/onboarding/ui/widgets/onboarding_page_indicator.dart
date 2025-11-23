import 'package:flutter/material.dart';
import '../../../../Core/constants/app_durations.dart';
import '../../../../Core/constants/app_sizes.dart';
import '../../../../core/constants/app_colors.dart';

class OnboardingPageIndicator extends StatelessWidget {
  const OnboardingPageIndicator({
    super.key,
    required this.currentPage,
    required this.pageCount,
  });

  final int currentPage;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageCount,
        (index) => AnimatedContainer(
          duration: AppDurations.ms300,
          margin: AppSizes.paddingSymmetricH4,
          width: currentPage == index ? 10 : 10,
          height: 10,
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            borderRadius: AppSizes.borderRadius50,
            color: currentPage == index
                ? AppColor.green1_500
                : AppColor.green1_500.withValues(alpha: 0.5),
          ),
        ),
      ),
    );
  }
}
