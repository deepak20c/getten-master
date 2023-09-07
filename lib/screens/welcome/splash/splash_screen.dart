import 'package:flutter/material.dart';
import 'package:getten/screens/welcome/splash/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BodySplashScreen(),
    );
  }
}
