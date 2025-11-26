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

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../logic/login_cubit.dart';
import '../logic/login_state.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginCubit>(),
      child: Scaffold(
        appBar: CustomScaffoldAppBar(title: S.of(context).login),
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              // Navigate to home or dashboard
              // Navigator.pushReplacementNamed(context, AppRoutes.home);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(S.of(context).loginSuccess)),
              );
            } else if (state is LoginFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message)),
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppDimensions.gapH24,
                    CustomTextFormField(
                      controller: _emailController,
                      hintText: S.of(context).email,
                    ),
                    AppDimensions.gapH16,
                    CustomTextFormField(
                      controller: _passwordController,
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
                    state is LoginLoading
                        ? const Center(child: CircularProgressIndicator())
                        : CustomButton(
                            text: S.of(context).login,
                            onPressed: () {
                              context.read<LoginCubit>().login(
                                _emailController.text,
                                _passwordController.text,
                              );
                            },
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
                      iconColor: Theme.of(context).brightness == Brightness.dark
                          ? AppColor.white
                          : null,
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
            );
          },
        ),
      ),
    );
  }
}
