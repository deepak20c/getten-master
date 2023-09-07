import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class CustomSmallHeading extends StatelessWidget {
  const CustomSmallHeading({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Text(
      text,
      style: TextStyle(
        color: AppColors.blackColor,
        fontSize: dimensions.getScreenHeight * 0.02,
      ),
    );
  }
}
