import 'package:flutter/material.dart';
import 'package:getten/screens/auth/forget/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BodyForgetPasswordScreen(),
    );
  }
}
