import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_text_styles.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'حساب جديد',
          style: AppTextStyles.text19W700.copyWith(color: AppColor.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: AppColor.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 24.h),
              const CustomTextField(hintText: 'الاسم كامل'),
              SizedBox(height: 16.h),
              const CustomTextField(hintText: 'البريد الإلكتروني'),
              SizedBox(height: 16.h),
              const CustomTextField(
                hintText: 'كلمة المرور',
                obscureText: true,
                suffixIcon: Icon(Icons.remove_red_eye, color: AppColor.gray200),
              ),
              SizedBox(height: 16.h),
              Row(
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
                            text: 'من خلال إنشاء حساب , فإنك توافق على ',
                            style: AppTextStyles.text13W700.copyWith(color: AppColor.gray400),
                          ),
                          TextSpan(
                            text: 'الشروط والأحكام الخاصة بنا',
                            style: AppTextStyles.text13W700.copyWith(color: AppColor.green1_500),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              CustomButton(
                text: 'إنشاء حساب جديد',
                onPressed: () {},
              ),
              SizedBox(height: 26.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'تمتلك حساب بالفعل؟',
                    style: AppTextStyles.text16W700.copyWith(color: AppColor.gray400),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'تسجيل دخول',
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
