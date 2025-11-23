import 'package:flutter/material.dart';
import '../../../../Core/constants/app_durations.dart';
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
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: currentPage == index ? 20 : 10,
          height: 10,
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: currentPage == index
                ? AppColor.green1_500
                : AppColor.green1_500.withValues(alpha: 0.5),
          ),
        ),
      ),
    );
  }
}
