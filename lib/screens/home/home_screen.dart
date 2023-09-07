import 'package:flutter/material.dart';
import 'package:getten/screens/home/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      backgroundColor: AppColors.primaryBGColor,
      body: BodyHomeScreen(),
    );
  }
}
