import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class PackageDetailsRow extends StatelessWidget {
  final String startText;
  final String endText;
  final bool isIncluded;
  const PackageDetailsRow({
    super.key,
    required this.startText,
    required this.endText,
    this.isIncluded = true,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              startText,
              style: TextStyle(
                fontSize: dimensions.getScreenWidth * 0.04,
                color: AppColors.blackColor,
                decoration: !isIncluded
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            !isIncluded
                ? const SizedBox()
                : Text(
                    endText,
                    style: TextStyle(
                      fontSize: dimensions.getScreenWidth * 0.045,
                      color: AppColors.primaryColor,
                    ),
                  )
          ],
        ),
        Divider(
          color: AppColors.greyScale300Color,
          thickness: dimensions.getScreenWidth * 0.0035,
        ),
      ],
    );
  }
}
