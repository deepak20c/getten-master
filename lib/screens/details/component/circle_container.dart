import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class CircleIconContainer extends StatelessWidget {
  const CircleIconContainer({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
  });

  final String text;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: dimensions.getScreenHeight * 0.06,
            width: dimensions.getScreenHeight * 0.06,
            decoration: BoxDecoration(
              color: AppColors.disabledColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(
                dimensions.getScreenHeight * 0.15,
              ),
            ),
            child: Icon(
              icon,
              size: dimensions.getScreenHeight * 0.03,
              color: AppColors.whiteColor,
            ),
          ),
          SizedBox(height: dimensions.getScreenHeight * 0.01),
          Text(
            text,
            style: TextStyle(
              fontSize: dimensions.getScreenHeight * 0.015,
              color: AppColors.whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
