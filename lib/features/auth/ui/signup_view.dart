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

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../logic/signup_cubit.dart';
import '../logic/signup_state.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignupCubit>(),
      child: Scaffold(
        appBar: CustomScaffoldAppBar(
          title: S.of(context).signup,
          showBackButton: true,
        ),
        body: BlocConsumer<SignupCubit, SignupState>(
          listener: (context, state) {
            if (state is SignupSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Account created successfully!')),
              );
              Navigator.pop(context);
            } else if (state is SignupFailure) {
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
                  children: [
                    AppDimensions.gapH24,
                    CustomTextFormField(
                      controller: _nameController,
                      hintText: S.of(context).fullName,
                    ),
                    AppDimensions.gapH16,
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
                    const TermsAndConditionsWidget(),
                    AppDimensions.gapH32,
                    state is SignupLoading
                        ? const Center(child: CircularProgressIndicator())
                        : CustomButton(
                            text: S.of(context).createAccount,
                            onPressed: () {
                              context.read<SignupCubit>().signup(
                                name: _nameController.text,
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                            },
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
            );
          },
        ),
      ),
    );
  }
}
