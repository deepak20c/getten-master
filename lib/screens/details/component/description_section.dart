import 'package:flutter/material.dart';
import 'package:getten/screens/home/component/row_heading.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: dimensions.getScreenWidth * 0.05,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Description',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.blackColor,
              fontSize: dimensions.getScreenWidth * 0.05,
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tem por incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: AppColors.blackColor,
              fontSize: dimensions.getScreenWidth * 0.03,
            ),
          ),
          RowHeadings(
            startText: 'Reviews',
            endText: 'View all',
            onTapped: () {},
          ),
        ],
      ),
    );
  }
}
