import 'package:flutter/material.dart';
import 'package:getten/screens/details/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryBGColor,
      body: BodyDetailsScreen(),
    );
  }
}
