import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/constants/app_sizes.dart';
import '../../data/repo/onboarding_repo.dart';
import '../../logic/cubit/onboarding_page_controller_cubit.dart';
import 'onboarding_page_indicator.dart';
import 'onboarding_page_view.dart';
import 'onboarding_start_button.dart';

class OnboardingPageBuilder extends StatelessWidget {
  const OnboardingPageBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnBoardingPageView(),
        ),
        BlocBuilder<OnboardingPageControllerCubit, int>(
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: AppSizes.p32,
            children: [
              OnboardingPageIndicator(
                currentPage: state,
                pageCount: OnboardingRepo.pages.length,
              ),
              OnboardingStartButton(isVisible: state == OnboardingRepo.pages.length - 1),
            ],
          ),
        ),
        gapH24,
      ],
    );
  }
}
