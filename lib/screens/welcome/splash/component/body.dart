import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/routes/routes_name.dart';

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
      const Duration(seconds: 3),
      () {
        Get.offNamed(RoutesName.onboardingScreen);
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
