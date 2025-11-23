import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/constants/app_dimensions.dart';
import '../../../../core/constants/app_text_styles.dart';

class OnboardingTextContent extends StatelessWidget {
  const OnboardingTextContent({
    super.key,
    required this.title,
    required this.description,
  });

  final Widget title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDimensions.paddingSymmetricH38,
      child: Column(
        spacing: 24.h,
        children: [
          title,
          Text(
            description,
            textAlign: TextAlign.center,
            style: AppTextStyles.text13W500,
          ),
        ],
      ),
    );
  }
}
