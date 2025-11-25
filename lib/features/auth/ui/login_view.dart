import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../core/constants/app_dimensions.dart';
import '../../../core/widgets/custom_scaffold_app_bar.dart';
import '../../../core/widgets/custom_text_form_field.dart';
import '../../../generated/l10n.dart';
import 'widgets/social_login_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomScaffoldAppBar(title: S.of(context).login),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              AppDimensions.gapH24,
              CustomTextFormField(hintText: S.of(context).email),
              AppDimensions.gapH16,
              CustomTextFormField(
                hintText: S.of(context).password,
                obscureText: true,
              ),
              AppDimensions.gapH16,
              TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).forgotPassword,
                  style: AppTextStyles.text13W700.copyWith(color: AppColor.green1_500),
                ),
              ),
              AppDimensions.gapH32,
              CustomButton(
                text: S.of(context).login,
                onPressed: () {},
              ),
              AppDimensions.gapH32,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).dontHaveAccount,
                    style: AppTextStyles.text16W700.copyWith(color: AppColor.gray400),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, AppRoutes.signup),
                    child: Text(
                      S.of(context).createAccount,
                      style: AppTextStyles.text16W700.copyWith(color: AppColor.green1_500),
                    ),
                  ),
                ],
              ),
              AppDimensions.gapH32,
              Row(
                children: [
                  const Expanded(child: Divider(color: AppColor.gray200)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      S.of(context).or,
                      style: AppTextStyles.text16W700,
                    ),
                  ),
                  const Expanded(child: Divider(color: AppColor.gray200)),
                ],
              ),
              AppDimensions.gapH16,
              SocialLoginButton(
                text: S.of(context).loginGoogle,
                image: AppAssets.svgGoogleIcon,
                onPressed: () {},
              ),
              AppDimensions.gapH16,
              SocialLoginButton(
                text: S.of(context).loginApple,
                image: AppAssets.svgAppleIcon,
                iconColor: Theme.of(context).brightness == Brightness.dark ? AppColor.white : null,
                onPressed: () {},
              ),
              AppDimensions.gapH16,
              SocialLoginButton(
                text: S.of(context).loginFacebook,
                image: AppAssets.svgFacebookIcon,
                onPressed: () {},
              ),
              AppDimensions.gapH32,
            ],
          ),
        ),
      ),
    );
  }
}
