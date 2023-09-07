import 'package:flutter/material.dart';
import 'package:getten/screens/details/component/description_section.dart';
import 'package:getten/screens/details/component/details_section.dart';
import 'package:getten/screens/details/component/images_stack.dart';
import 'package:getten/screens/details/component/link_section.dart';
import 'package:getten/screens/details/component/map_section.dart';
import 'package:getten/screens/details/component/review_card.dart';
import 'package:getten/utils/responsive/dimension.dart';

class BodyDetailsScreen extends StatelessWidget {
  const BodyDetailsScreen({super.key});

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
            const ImagesStack(),
            SizedBox(height: dimensions.getScreenHeight * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: dimensions.getScreenWidth * 0.05,
              ),
              child: const BusinessDetailsSection(),
            ),
            SizedBox(height: dimensions.getScreenHeight * 0.02),
            LinkSection(
              onWebsite: () {},
              onLocation: () {},
              onPhone: () {},
              onReport: () {},
              onShare: () {},
            ),
            SizedBox(height: dimensions.getScreenHeight * 0.02),
            const MapSection(),
            SizedBox(height: dimensions.getScreenHeight * 0.02),
            const DescriptionSection(),
            SizedBox(height: dimensions.getScreenHeight * 0.02),
            SizedBox(
              height: dimensions.getScreenHeight * 0.2 * 3,
              child: ListView.builder(
                itemCount: 3,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => const ReviewCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
