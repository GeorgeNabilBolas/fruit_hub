import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../generated/l10n.dart';
import 'widgets/social_login_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'تسجيل دخول',
          style: AppTextStyles.text19W700,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 24.h),
              const CustomTextField(hintText: 'البريد الإلكتروني'),
              SizedBox(height: 16.h),
              const CustomTextField(
                hintText: 'كلمة المرور',
                obscureText: true,
                suffixIcon: Icon(Icons.remove_red_eye, color: AppColor.gray200),
              ),
              SizedBox(height: 16.h),
              Align(
                alignment: Localizations.localeOf(context).languageCode == 'en'
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'نسيت كلمة المرور؟',
                    style: AppTextStyles.text13W700.copyWith(color: AppColor.green1_500),
                  ),
                ),
              ),
              SizedBox(height: 33.h),
              CustomButton(
                text: 'تسجيل دخول',
                onPressed: () {},
              ),
              SizedBox(height: 33.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'لا تمتلك حساب؟',
                    style: AppTextStyles.text16W700.copyWith(color: AppColor.gray400),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.signup);
                    },
                    child: Text(
                      'قم بإنشاء حساب',
                      style: AppTextStyles.text16W700.copyWith(color: AppColor.green1_500),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 33.h),
              Row(
                children: [
                  const Expanded(child: Divider(color: AppColor.gray200)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      'أو',
                      style: AppTextStyles.text16W700,
                    ),
                  ),
                  const Expanded(child: Divider(color: AppColor.gray200)),
                ],
              ),
              SizedBox(height: 16.h),
              SocialLoginButton(
                text: 'تسجيل بواسطة جوجل',
                image: AppAssets.svgGoogleIcon,
                onPressed: () {},
              ),
              SizedBox(height: 16.h),
              SocialLoginButton(
                text: 'تسجيل بواسطة أبل',
                image: AppAssets.svgAppleIcon,
                iconColor: Theme.of(context).brightness == Brightness.dark ? AppColor.white : null,
                onPressed: () {},
              ),
              SizedBox(height: 16.h),
              SocialLoginButton(
                text: 'تسجيل بواسطة فيسبوك',
                image: AppAssets.svgFacebookIcon,
                onPressed: () {},
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
