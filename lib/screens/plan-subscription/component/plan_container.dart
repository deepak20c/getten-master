import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class PlansContainer extends StatelessWidget {
  final int totalPeriod;
  final int pricePerMonth;
  final void Function()? onPressed;

  const PlansContainer({
    super.key,
    required this.totalPeriod,
    required this.pricePerMonth,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: dimensions.getScreenWidth * 0.01,
        ),
        height: dimensions.getScreenHeight * 0.15,
        width: dimensions.getScreenWidth * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            dimensions.getScreenWidth * 0.03,
          ),
          border: Border.all(
            color: AppColors.blackColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              totalPeriod.toString(),
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: dimensions.getScreenWidth * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'months',
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: dimensions.getScreenWidth * 0.035,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '\$ $pricePerMonth / Months',
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: dimensions.getScreenWidth * 0.035,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: dimensions.getScreenWidth * 0.05,
              ),
              child: Divider(
                color: AppColors.greyScale300Color,
                thickness: dimensions.getScreenWidth * 0.0035,
              ),
            ),
            Text(
              '\$ $pricePerMonth',
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: dimensions.getScreenWidth * 0.03,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
