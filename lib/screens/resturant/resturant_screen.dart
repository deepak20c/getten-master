import 'package:flutter/material.dart';
import 'package:getten/screens/resturant/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/widget/custom_appbar_widget.dart';

class ResturantScreen extends StatelessWidget {
  const ResturantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryBGColor,
      appBar: CustomAppBar(
        text: 'Resturant',
      ),
      body: BodyResturantScreen(),
    );
  }
}
