import 'package:flutter/material.dart';
import 'package:getten/screens/details/details_screen.dart';
import 'package:getten/utils/models/category/data.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_category_card.dart';

class BodyOtherCategoryScreen extends StatelessWidget {
  const BodyOtherCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: dimensions.getScreenWidth * 0.03,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: dimensions.getScreenHeight * 0.02),
              SizedBox(
                height: dimensions.getScreenHeight * 0.27 * 10 / 3,
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  itemCount: othercategoryItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.65,
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    return CustomCategoryCard(
                      categoryImageURL: othercategoryItems[index].image,
                      categoryName: othercategoryItems[index].headingText,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const DetailsScreen()),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
