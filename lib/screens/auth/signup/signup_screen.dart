import 'package:flutter/material.dart';
import 'package:getten/screens/auth/signup/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BodySignUpScreen(),
    );
  }
}
