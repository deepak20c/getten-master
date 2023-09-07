import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getten/screens/welcome/onboarding/onboarding_screen.dart';
import 'package:getten/utils/assets/images/images.dart';

class BodySplashScreen extends StatefulWidget {
  const BodySplashScreen({super.key});

  @override
  State<BodySplashScreen> createState() => _BodySplashScreenState();
}

class _BodySplashScreenState extends State<BodySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: ((context) => const OnboardingScreen()),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          AppImages.upperCurveSVG,
        ),
        Center(
          child: SvgPicture.asset(AppImages.logoSVG),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(AppImages.lowerCurveSVG),
        ),
      ],
    );
  }
}
