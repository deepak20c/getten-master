import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_selection_container.dart';

class PriceSearch extends StatelessWidget {
  const PriceSearch({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Price Range',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: dimensions.getScreenWidth * 0.05,
            color: AppColors.blackColor,
          ),
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: dimensions.getScreenWidth * 0.2,
              child: CustomSelctionContainerWidget(
                onPressed: () {},
                buttonText: '\$',
                backgroundColor: Colors.transparent,
                textColor: AppColors.blackColor,
                border: Border.all(
                  width: dimensions.getScreenWidth * 0.001,
                ),
              ),
            ),
            SizedBox(
              width: dimensions.getScreenWidth * 0.2,
              child: CustomSelctionContainerWidget(
                onPressed: () {},
                buttonText: '\$\$',
                backgroundColor: Colors.transparent,
                border: Border.all(
                  width: dimensions.getScreenWidth * 0.001,
                ),
                textColor: AppColors.blackColor,
              ),
            ),
            SizedBox(
              width: dimensions.getScreenWidth * 0.2,
              child: CustomSelctionContainerWidget(
                onPressed: () {},
                buttonText: '\$\$\$',
                border: Border.all(
                  width: dimensions.getScreenWidth * 0.001,
                ),
                backgroundColor: Colors.transparent,
                textColor: AppColors.blackColor,
              ),
            ),
            SizedBox(
              width: dimensions.getScreenWidth * 0.2,
              child: CustomSelctionContainerWidget(
                onPressed: () {},
                buttonText: '\$\$\$\$',
                backgroundColor: Colors.transparent,
                border: Border.all(
                  width: dimensions.getScreenWidth * 0.001,
                ),
                textColor: AppColors.blackColor,
              ),
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
