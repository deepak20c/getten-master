import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class RatingSearch extends StatelessWidget {
  const RatingSearch({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Rating',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: dimensions.getScreenWidth * 0.05,
            color: AppColors.blackColor,
          ),
        ),
        Row(
          children: [
            SizedBox(width: dimensions.getScreenWidth * 0.01),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    size: dimensions.getScreenWidth * 0.07,
                    color: AppColors.greyScale400Color,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    size: dimensions.getScreenWidth * 0.07,
                    color: AppColors.greyScale400Color,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    size: dimensions.getScreenWidth * 0.07,
                    color: AppColors.greyScale400Color,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    size: dimensions.getScreenWidth * 0.07,
                    color: AppColors.greyScale400Color,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star,
                    size: dimensions.getScreenWidth * 0.07,
                    color: AppColors.greyScale400Color,
                  ),
                ),
                Text(
                  '& Up',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: dimensions.getScreenWidth * 0.05,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.02),
        Divider(
          color: AppColors.blackColor,
          thickness: dimensions.getScreenWidth * 0.0003,
        ),
      ],
    );
  }
}
