import 'package:flutter/material.dart';
import 'package:getten/screens/home/component/other_cateogry_section.dart';
import 'package:getten/screens/home/component/popular_category_section.dart';
import 'package:getten/screens/home/component/user_details_section.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_slider_widget.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const UserDetailsSection(),
            CustomCarouselSlider(
              height: dimensions.getScreenHeight * 0.3,
              viewportFraction: 0.7,
              imagesURL: const [
                'assets/images/slider.png',
                'assets/images/slider.png',
                'assets/images/slider.png',
                'assets/images/slider.png',
              ],
            ),
            SizedBox(height: dimensions.getScreenHeight * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: dimensions.getScreenWidth * 0.03,
              ),
              child: SearchBar(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      dimensions.getScreenWidth * 0.03,
                    ),
                  ),
                ),
                leading: Icon(
                  Icons.search,
                  size: dimensions.getScreenWidth * 0.06,
                  color: AppColors.greyScale500Color,
                ),
                hintText: 'Search...',
                hintStyle: MaterialStatePropertyAll(
                  TextStyle(
                    fontSize: dimensions.getScreenWidth * 0.04,
                    color: AppColors.greyScale500Color,
                  ),
                ),
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor: const MaterialStatePropertyAll(
                  AppColors.whiteColor,
                ),
              ),
            ),
            SizedBox(height: dimensions.getScreenHeight * 0.02),
            const PopularCategorySection(),
            SizedBox(height: dimensions.getScreenHeight * 0.01),
            const OtherCategorySection(),
            SizedBox(height: dimensions.getScreenHeight * 0.02),
          ],
        ),
      ),
    );
  }
}
