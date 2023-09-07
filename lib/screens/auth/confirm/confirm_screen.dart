import 'package:flutter/material.dart';
import 'package:getten/screens/auth/confirm/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';

class ConfrimScreen extends StatelessWidget {
  const ConfrimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BodyConfrimScreen(),
    );
  }
}
