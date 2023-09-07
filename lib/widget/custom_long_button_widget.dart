import 'package:flutter/material.dart';
import 'package:getten/utils/responsive/dimension.dart';

class CustomLongButtonWidget extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final void Function()? onPressed;
  final double height;
  final double textFontSize;

  const CustomLongButtonWidget({
    super.key,
    required this.text,
    this.onPressed,
    required this.textColor,
    required this.backgroundColor,
    required this.height,
    required this.textFontSize,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return GestureDetector(
      onTap: onPressed,
      child: ClipRRect(
        child: Container(
          width: double.infinity,
          height: height,
          padding: EdgeInsets.symmetric(
            horizontal: dimensions.getScreenWidth * 0.05,
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius:
                BorderRadius.circular(dimensions.getScreenWidth * 0.02),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: textFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
