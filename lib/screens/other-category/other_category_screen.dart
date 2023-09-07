import 'package:flutter/material.dart';
import 'package:getten/screens/other-category/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/widget/custom_appbar_widget.dart';

class OtherCategoryScreen extends StatelessWidget {
  const OtherCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryBGColor,
      appBar: CustomAppBar(
        text: 'Other Categories',
      ),
      body: BodyOtherCategoryScreen(),
    );
  }
}
