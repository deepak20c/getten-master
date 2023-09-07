import 'package:flutter/material.dart';
import 'package:getten/screens/details/component/details_section.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/responsive/dimension.dart';

class ResturantCard extends StatelessWidget {
  const ResturantCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Container(
      height: dimensions.getScreenHeight * 0.35,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: dimensions.getScreenWidth * 0.03,
      ),
      margin: EdgeInsets.only(bottom: dimensions.getScreenHeight * 0.02),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(
          dimensions.getScreenWidth * 0.05,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: dimensions.getScreenHeight * 0.01),
          ClipRRect(
            borderRadius:
                BorderRadius.circular(dimensions.getScreenWidth * 0.03),
            child: Image.asset(
              AppImages.resturant1PNG,
              fit: BoxFit.fill,
              width: double.infinity,
              height: dimensions.getScreenHeight * 0.15,
            ),
          ),
          const BusinessDetailsSection()
        ],
      ),
    );
  }
}
