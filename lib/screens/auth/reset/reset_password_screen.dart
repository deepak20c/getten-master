import 'package:flutter/material.dart';
import 'package:getten/screens/auth/reset/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BodyResetPasswordScreen(),
    );
  }
}
