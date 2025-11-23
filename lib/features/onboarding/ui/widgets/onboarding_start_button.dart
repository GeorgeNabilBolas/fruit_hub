import 'package:flutter/material.dart';
import '../../../../Core/constants/app_sizes.dart';
import '../../../../Core/routing/app_routes.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';

class OnboardingStartButton extends StatelessWidget {
  const OnboardingStartButton({
    super.key,
    required this.isVisible,
  });

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      maintainAnimation: true,
      maintainState: true,
      maintainSize: true,
      child: Padding(
        padding: AppSizes.paddingSymmetricH20,
        child: CustomButton(
          text: S.of(context).startNow,
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.authRoute);
          },
        ),
      ),
    );
  }
}
