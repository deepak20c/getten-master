import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return SizedBox(
      height: dimensions.getScreenHeight * 0.2,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: dimensions.getScreenWidth * 0.05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Username',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.blackColor,
                    fontSize: dimensions.getScreenWidth * 0.05,
                  ),
                ),
                const Row(
                  children: [
                    Icon(Icons.star, color: AppColors.primaryColor),
                    Icon(Icons.star, color: AppColors.primaryColor),
                    Icon(Icons.star, color: AppColors.primaryColor),
                    Icon(Icons.star, color: AppColors.primaryColor),
                    Icon(Icons.star, color: AppColors.primaryColor),
                  ],
                )
              ],
            ),
            Text(
              '20 Feb, 2022',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor,
                fontSize: dimensions.getScreenWidth * 0.03,
              ),
            ),
            SizedBox(height: dimensions.getScreenHeight * 0.01),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tem por incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColors.blackColor,
                fontSize: dimensions.getScreenWidth * 0.03,
              ),
            ),
            SizedBox(height: dimensions.getScreenHeight * 0.01),
            Divider(
              color: AppColors.blackColor,
              thickness: dimensions.getScreenWidth * 0.002,
            ),
          ],
        ),
      ),
    );
  }
}
