import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/responsive/dimension.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: dimensions.getScreenHeight * 0.1,
          width: dimensions.getScreenHeight * 0.1,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(dimensions.getScreenHeight * 0.1),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.userPNG),
            ),
          ),
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.01),
        Text(
          'rue des Lombards',
          style: TextStyle(
            fontSize: dimensions.getScreenWidth * 0.035,
            color: AppColors.greyScale800Color,
          ),
        ),
        SizedBox(
          width: dimensions.getScreenWidth * 0.25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.person,
                    size: dimensions.getScreenWidth * 0.035,
                    color: AppColors.greyScale800Color,
                  ),
                  SizedBox(width: dimensions.getScreenHeight * 0.005),
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: dimensions.getScreenWidth * 0.035,
                      color: AppColors.greyScale800Color,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.star_border,
                    size: dimensions.getScreenWidth * 0.035,
                    color: AppColors.greyScale800Color,
                  ),
                  SizedBox(width: dimensions.getScreenHeight * 0.005),
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: dimensions.getScreenWidth * 0.035,
                      color: AppColors.greyScale800Color,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.image,
                    size: dimensions.getScreenWidth * 0.035,
                    color: AppColors.greyScale800Color,
                  ),
                  SizedBox(width: dimensions.getScreenHeight * 0.005),
                  Text(
                    '0',
                    style: TextStyle(
                      fontSize: dimensions.getScreenWidth * 0.035,
                      color: AppColors.greyScale800Color,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
