import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../core/constants/app_dimensions.dart';
import '../../../core/widgets/custom_scaffold_app_bar.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../../generated/l10n.dart';
import 'widgets/terms_and_conditions_widget.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomScaffoldAppBar(
        title: S.of(context).signup,
        showBackButton: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              AppDimensions.gapH24,
              CustomTextFormField(hintText: S.of(context).fullName),
              AppDimensions.gapH16,
              CustomTextFormField(hintText: S.of(context).email),
              AppDimensions.gapH16,
              CustomTextFormField(
                hintText: S.of(context).password,
                obscureText: true,
              ),
              AppDimensions.gapH16,
              const TermsAndConditionsWidget(),
              AppDimensions.gapH32,
              CustomButton(
                text: S.of(context).createAccount,
                onPressed: () {},
              ),
              AppDimensions.gapH24,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).alreadyHaveAccount,
                    style: AppTextStyles.text16W700.copyWith(color: AppColor.gray400),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      S.of(context).login,
                      style: AppTextStyles.text16W700.copyWith(color: AppColor.green1_500),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
