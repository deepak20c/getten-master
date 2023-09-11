import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/utils/routes/routes_name.dart';
import 'package:getten/widget/social_media_widget.dart';

class CustomLowerColumnWidget extends StatelessWidget {
  final GestureRecognizer? recognizer;
  final String descriptionText;
  final String lastText;
  final void Function()? onFacebookTapped;
  final void Function()? onGoogleTapped;
  const CustomLowerColumnWidget({
    super.key,
    this.recognizer,
    required this.lastText,
    required this.descriptionText,
    this.onFacebookTapped,
    this.onGoogleTapped,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            Get.toNamed(RoutesName.forgetPasswordScreen);
          },
          child: RichText(
            text: TextSpan(
              text: 'Forget the password? ',
              style: TextStyle(
                color: AppColors.greyScale700Color,
                fontSize: dimensions.getScreenWidth * 0.035,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'Get Help',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: dimensions.getScreenWidth * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: dimensions.getScreenWidth * 0.25,
              height: dimensions.getScreenHeight * 0.001,
              decoration: BoxDecoration(
                color: AppColors.blackColor.withOpacity(0.3),
              ),
            ),
            Text(
              'Or continue with',
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: dimensions.getScreenHeight * 0.02,
              ),
            ),
            Container(
              width: dimensions.getScreenWidth * 0.25,
              height: dimensions.getScreenHeight * 0.001,
              decoration: BoxDecoration(
                color: AppColors.blackColor.withOpacity(0.3),
              ),
            ),
          ],
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.02),
        SocialMediaLogins(
          onFacebookTap: onFacebookTapped,
          onGoogleTap: onGoogleTapped,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.05),
        Text.rich(
          TextSpan(
            text: descriptionText,
            style: TextStyle(
              color: AppColors.greyScale700Color,
              fontSize: dimensions.getScreenWidth * 0.035,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: lastText,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: dimensions.getScreenWidth * 0.04,
                ),
                recognizer: recognizer,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
