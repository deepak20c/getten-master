import 'package:flutter/material.dart';
import 'package:getten/utils/responsive/dimension.dart';

class CustomSelctionContainerWidget extends StatelessWidget {
  const CustomSelctionContainerWidget({
    super.key,
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
    this.border,
    this.onPressed,
  });

  final String buttonText;
  final Color backgroundColor;
  final Color textColor;
  final BoxBorder? border;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final AppDimensions dimensions = AppDimensions(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: dimensions.getScreenHeight * 0.05,
        width: dimensions.getScreenWidth * 0.3,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(dimensions.getScreenWidth * 0.02),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: dimensions.getScreenWidth * 0.04,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
