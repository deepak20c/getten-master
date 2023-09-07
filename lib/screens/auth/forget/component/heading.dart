import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class HeadingsForget extends StatelessWidget {
  const HeadingsForget({
    super.key,
    required this.heading,
    required this.description,
  });

  final String heading;
  final String description;

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          heading,
          style: TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: dimensions.getScreenWidth * 0.05,
          ),
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.02),
        Text(
          description,
          style: TextStyle(
            color: AppColors.greyScale700Color,
            fontSize: dimensions.getScreenWidth * 0.03,
          ),
        ),
      ],
    );
  }
}
