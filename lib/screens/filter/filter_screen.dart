import 'package:flutter/material.dart';
import 'package:getten/screens/filter/component/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/widget/custom_appbar_widget.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryBGColor,
      appBar: CustomAppBar(
        text: 'Filter',
        isTrailing: false,
      ),
      body: BodyFilterScreen(),
    );
  }
}
