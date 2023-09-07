import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class CustomCategoryCard extends StatelessWidget {
  final String categoryName;
  final String categoryImageURL;
  final void Function()? onPressed;
  const CustomCategoryCard({
    super.key,
    required this.categoryName,
    required this.categoryImageURL,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final AppDimensions dimensions = AppDimensions(context);
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: dimensions.getScreenHeight * 0.25,
        width: dimensions.getScreenWidth * 0.35,
        margin: EdgeInsets.symmetric(
          horizontal: dimensions.getScreenWidth * 0.01,
          vertical: dimensions.getScreenWidth * 0.02,
        ),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(
            dimensions.getScreenWidth * 0.03,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: dimensions.getScreenHeight * 0.12,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(categoryImageURL),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(dimensions.getScreenWidth * 0.03),
                  topRight: Radius.circular(
                    dimensions.getScreenWidth * 0.03,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: dimensions.getScreenHeight * 0.02,
            ),
            Center(
              child: Text(
                categoryName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: dimensions.getScreenWidth * 0.04,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
