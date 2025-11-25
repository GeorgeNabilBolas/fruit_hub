import 'package:flutter/material.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../generated/l10n.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/services/app_settings_service.dart';

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
        padding: AppDimensions.paddingSymmetricH20,
        child: CustomButton(
          text: S.of(context).startNow,
          onPressed: () {
            getIt<AppSettingsService>().setOnboardingSeen();
            Navigator.pushReplacementNamed(context, AppRoutes.authRoute);
          },
        ),
      ),
    );
  }
}
