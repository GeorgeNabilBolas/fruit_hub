import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
    required this.onSkip,
  });

  final VoidCallback? onSkip;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      right: 20.w,
      child: Visibility(
        visible: onSkip != null,
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
    );
  }
}
