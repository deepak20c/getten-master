import 'package:flutter/material.dart';
import 'package:getten/utils/responsive/dimension.dart';

class CustomCircleIconContainer extends StatelessWidget {
  const CustomCircleIconContainer({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
    required this.iconBGColor,
    required this.textColor,
    required this.iconColor,
  });

  final String text;
  final IconData icon;
  final void Function()? onPressed;
  final Color iconBGColor;
  final Color textColor;
  final Color iconColor;

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
              color: iconBGColor,
              borderRadius: BorderRadius.circular(
                dimensions.getScreenHeight * 0.15,
              ),
            ),
            child: Icon(
              icon,
              size: dimensions.getScreenHeight * 0.03,
              color: iconColor,
            ),
          ),
          SizedBox(height: dimensions.getScreenHeight * 0.01),
          Text(
            text,
            style: TextStyle(
              fontSize: dimensions.getScreenHeight * 0.015,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
