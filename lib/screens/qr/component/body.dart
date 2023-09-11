import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/responsive/dimension.dart';

class BodyQRScreen extends StatelessWidget {
  const BodyQRScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: dimensions.getScreenWidth * 0.05),
      child: Center(
        child: Container(
          width: double.infinity,
          height: dimensions.getScreenHeight * 0.5,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(dimensions.getScreenWidth * 0.05),
            color: AppColors.disabledColor.withOpacity(0.4),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(AppImages.qrPNG),
                SizedBox(
                  height: dimensions.getScreenHeight * 0.05,
                ),
                Text(
                  'Scan this QR code to get 10% OFF',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: dimensions.getScreenWidth * 0.05,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
