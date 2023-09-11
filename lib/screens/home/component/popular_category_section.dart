import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/screens/home/component/row_heading.dart';
import 'package:getten/utils/models/category/data.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/utils/routes/routes_name.dart';
import 'package:getten/widget/custom_category_card.dart';

class PopularCategorySection extends StatelessWidget {
  const PopularCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: dimensions.getScreenWidth * 0.03,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          RowHeadings(
            startText: 'Popular Categories',
            endText: 'View all',
            onTapped: () {
              Get.toNamed(RoutesName.popularCategoryScreen);
            },
          ),
          SizedBox(
            height: dimensions.getScreenHeight * 0.23,
            child: ListView.builder(
              itemCount: popularcategoryItems.length ~/ 2,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => CustomCategoryCard(
                onPressed: () {
                  Get.toNamed(RoutesName.businessScreen);
                },
                categoryImageURL: popularcategoryItems[index].image,
                categoryName: popularcategoryItems[index].headingText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
