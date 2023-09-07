import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class OnboardingItemWidget extends StatelessWidget {
  final String imageURL;
  final String tagLine;
  final String headingText;
  final String description;

  const OnboardingItemWidget({
    super.key,
    required this.imageURL,
    required this.headingText,
    required this.tagLine,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              height: dimensions.getScreenHeight * 0.1,
              width: dimensions.getScreenWidth * 0.04,
            ),
            SizedBox(
              width: dimensions.getScreenWidth * 0.02,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tagLine,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: dimensions.getScreenWidth * 0.03,
                  ),
                ),
                SizedBox(
                  height: dimensions.getScreenHeight * 0.002,
                ),
                Text(
                  headingText,
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: dimensions.getScreenWidth * 0.05,
                  ),
                ),
                SizedBox(
                  height: dimensions.getScreenHeight * 0.02,
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: AppColors.greyScale700Color,
                    fontSize: dimensions.getScreenWidth * 0.03,
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: dimensions.getScreenHeight * 0.1,
        ),
        Image.asset(
          imageURL,
          width: dimensions.getScreenWidth * 0.6,
          height: dimensions.getScreenHeight * 0.3,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
      ],
    );
  }
}
