import 'package:flutter/material.dart';
import 'package:getten/screens/welcome/onboarding/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BodyOnboardingScreen(),
    );
  }
}
