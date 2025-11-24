import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/cubit/onboarding_page_controller_cubit.dart';
import 'widgets/onboarding_page_builder.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnboardingPageControllerCubit(),
        child: const SafeArea(
          top: false,
          child: OnboardingPageBuilder(),
        ),
      ),
    );
  }
}
