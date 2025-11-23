import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/constants/app_durations.dart';
import '../../../../Core/routing/app_routes.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';
import '../../data/models/onboarding_model.dart';
import '../../data/repo/onboarding_repo.dart';
import '../../logic/cubit/onboarding_page_controller_cubit.dart';
import 'onboarding_page_body.dart';
import 'onboarding_page_indicator.dart';

class OnboardingPageBuilder extends StatefulWidget {
  const OnboardingPageBuilder({
    super.key,
  });

  @override
  State<OnboardingPageBuilder> createState() => _OnboardingPageBuilderState();
}

class _OnboardingPageBuilderState extends State<OnboardingPageBuilder> {
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
    final pages = OnboardingRepo.getPages();
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) => cubit.onPageChanged(index),
            children: List.generate(pages.length, (index) {
              return OnboardingPageBody(
                pageModel: pages[index],
                showSkipButton: index == 0,
                onSkip: () => _skipPageView(pages),
              );
            }),
          ),
        ),
        BlocBuilder<OnboardingPageControllerCubit, int>(
          builder: (context, state) => Column(
            spacing: 30,
            children: [
              OnboardingPageIndicator(
                currentPage: state,
                pageCount: pages.length,
              ),
              Visibility(
                visible: state == pages.length - 1,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomButton(
                    text: S.of(context).startNow,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.authRoute);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  void _skipPageView(List<OnboardingModel> pages) {
    _pageController.animateToPage(
      pages.length - 1,
      duration: AppDurations.ms300,
      curve: Curves.easeInOut,
    );
  }
}
