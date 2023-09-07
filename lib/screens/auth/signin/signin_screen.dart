import 'package:flutter/material.dart';
import 'package:getten/screens/auth/signin/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BodySignInScreen(),
    );
  }
}
