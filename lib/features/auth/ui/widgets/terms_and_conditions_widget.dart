import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({
    super.key,
  });

  @override
  State<TermsAndConditionsWidget> createState() => _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isTermsAccepted,
          onChanged: (value) {
            setState(() {
              isTermsAccepted = value ?? false;
            });
          },
          activeColor: AppColor.green1_500,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          side: const BorderSide(color: AppColor.gray200),
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: S.of(context).termsConditionPart1,
                  style: AppTextStyles.text13W700.copyWith(color: AppColor.gray400),
                ),
                TextSpan(
                  text: S.of(context).termsConditionPart2,
                  style: AppTextStyles.text13W700.copyWith(color: AppColor.green1_500),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
