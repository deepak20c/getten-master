import 'package:flutter/material.dart';
import 'package:getten/screens/auth/otp/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';

class ForgetOTPScreen extends StatelessWidget {
  const ForgetOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BodyForgetOTPScreen(),
    );
  }
}
