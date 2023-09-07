import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class BusinessDetailsSection extends StatelessWidget {
  const BusinessDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Pedestrians',
          style: TextStyle(
            fontSize: dimensions.getScreenWidth * 0.08,
            fontWeight: FontWeight.bold,
            color: AppColors.blackColor,
          ),
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.02),
        Row(
          children: [
            Text(
              '4.9',
              style: TextStyle(
                fontSize: dimensions.getScreenWidth * 0.03,
                color: AppColors.greyScale500Color,
              ),
            ),
            SizedBox(width: dimensions.getScreenWidth * 0.01),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: dimensions.getScreenWidth * 0.03,
                  color: AppColors.warningColor,
                ),
                Icon(
                  Icons.star,
                  size: dimensions.getScreenWidth * 0.03,
                  color: AppColors.warningColor,
                ),
                Icon(
                  Icons.star,
                  size: dimensions.getScreenWidth * 0.03,
                  color: AppColors.warningColor,
                ),
                Icon(
                  Icons.star,
                  size: dimensions.getScreenWidth * 0.03,
                  color: AppColors.warningColor,
                ),
                Icon(
                  Icons.star,
                  size: dimensions.getScreenWidth * 0.03,
                  color: AppColors.warningColor,
                ),
              ],
            ),
            SizedBox(width: dimensions.getScreenWidth * 0.01),
            Text(
              '2,4434 Reviews',
              style: TextStyle(
                fontSize: dimensions.getScreenWidth * 0.03,
                color: AppColors.greyScale500Color,
              ),
            ),
          ],
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.01),
        Row(
          children: [
            Icon(
              Icons.pin_drop_outlined,
              size: dimensions.getScreenWidth * 0.05,
              color: AppColors.greyScale500Color,
            ),
            SizedBox(width: dimensions.getScreenWidth * 0.01),
            Text(
              '8 rue des Lombards 75004 Paris Beaubourg, 4th',
              style: TextStyle(
                fontSize: dimensions.getScreenWidth * 0.03,
                color: AppColors.greyScale500Color,
              ),
            ),
          ],
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.01),
        Row(
          children: [
            Text(
              '\$\$\$\$',
              style: TextStyle(
                fontSize: dimensions.getScreenWidth * 0.035,
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(width: dimensions.getScreenWidth * 0.02),
            Icon(
              Icons.group,
              size: dimensions.getScreenWidth * 0.05,
              color: AppColors.greyScale500Color,
            ),
            SizedBox(width: dimensions.getScreenWidth * 0.01),
            Text(
              '200 People',
              style: TextStyle(
                fontSize: dimensions.getScreenWidth * 0.03,
                color: AppColors.greyScale500Color,
              ),
            ),
            SizedBox(width: dimensions.getScreenWidth * 0.02),
            Icon(
              Icons.abc,
              size: dimensions.getScreenWidth * 0.05,
              color: AppColors.greyScale500Color,
            ),
            SizedBox(width: dimensions.getScreenWidth * 0.01),
            Text(
              'Open 9:00 AM - 2:00 AM',
              style: TextStyle(
                fontSize: dimensions.getScreenWidth * 0.03,
                color: AppColors.greyScale500Color,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
