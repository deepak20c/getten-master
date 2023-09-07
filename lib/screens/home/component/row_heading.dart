import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class RowHeadings extends StatelessWidget {
  const RowHeadings({
    super.key,
    required this.startText,
    required this.endText,
    this.onTapped,
  });

  final String startText;
  final String endText;
  final void Function()? onTapped;

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          startText,
          style: TextStyle(
            fontSize: dimensions.getScreenWidth * 0.045,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor,
          ),
        ),
        TextButton(
          onPressed: onTapped,
          child: Text(
            endText,
            style: TextStyle(
              fontSize: dimensions.getScreenWidth * 0.04,
              color: AppColors.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
