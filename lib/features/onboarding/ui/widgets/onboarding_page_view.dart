import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/constants/app_durations.dart';
import '../../data/models/onboarding_model.dart';
import '../../data/repo/onboarding_repo.dart';
import '../../logic/cubit/onboarding_page_controller_cubit.dart';
import 'onboarding_page_body.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({
    super.key,
  });

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnboardingPageControllerCubit>();
    return PageView(
      controller: _pageController,
      onPageChanged: (index) => cubit.onPageChanged(index),
      children: List.generate(
        OnboardingRepo.pages.length,
        (index) => OnboardingPageBody(
          pageModel: OnboardingRepo.pages[index],
          showSkipButton: index == 0,
          onSkip: () async => await _skipOnboarding(),
        ),
      ),
    );
  }

  Future<void> _skipOnboarding() {
    return _pageController.animateToPage(
      OnboardingRepo.pages.length - 1,
      duration: AppDurations.ms300,
      curve: Curves.easeInOut,
    );
  }
}
