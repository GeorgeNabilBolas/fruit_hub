import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/constants/app_dimensions.dart';
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
        const Expanded(child: OnBoardingPageView()),
        BlocBuilder<OnboardingPageControllerCubit, int>(
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 32.h,
            children: [
              OnboardingPageIndicator(
                currentPage: state,
                pageCount: OnboardingRepo.getPages(context).length,
              ),
              OnboardingStartButton(
                isVisible: state == OnboardingRepo.getPages(context).length - 1,
              ),
            ],
          ),
        ),
        AppDimensions.gapH24,
      ],
    );
  }
}
