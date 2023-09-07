import 'package:flutter/material.dart';
import 'package:getten/screens/popular-category/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/widget/custom_appbar_widget.dart';

class PopularCategoryScreen extends StatelessWidget {
  const PopularCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryBGColor,
      appBar: CustomAppBar(
        text: 'Popular Categories',
      ),
      body: BodyPopularCategoryScreen(),
    );
  }
}
