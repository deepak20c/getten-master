import 'package:flutter/material.dart';
import 'package:getten/screens/business/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/widget/custom_appbar_widget.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryBGColor,
      appBar: CustomAppBar(
        text: 'Resturant',
        isLeading: true,
      ),
      body: BodyResturantScreen(),
    );
  }
}
