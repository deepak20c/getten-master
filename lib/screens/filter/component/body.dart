import 'package:flutter/material.dart';
import 'package:getten/screens/filter/component/map_search.dart';
import 'package:getten/screens/filter/component/person_search.dart';
import 'package:getten/screens/filter/component/price_search.dart';
import 'package:getten/screens/filter/component/rating_search.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_long_button_widget.dart';
import 'package:getten/widget/custom_selection_container.dart';

class BodyFilterScreen extends StatelessWidget {
  const BodyFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: dimensions.getScreenWidth * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: dimensions.getScreenHeight * 0.01),
              Container(
                height: dimensions.getScreenHeight * 0.85,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: dimensions.getScreenWidth * 0.025,
                ),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius:
                      BorderRadius.circular(dimensions.getScreenWidth * 0.04),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: dimensions.getScreenHeight * 0.05),
                    const MapSearch(),
                    SizedBox(height: dimensions.getScreenHeight * 0.02),
                    const PriceSearch(),
                    SizedBox(height: dimensions.getScreenHeight * 0.02),
                    const RatingSearch(),
                    SizedBox(height: dimensions.getScreenHeight * 0.02),
                    const PersonSearch(),
                    SizedBox(height: dimensions.getScreenHeight * 0.06),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: dimensions.getScreenWidth * 0.4,
                          height: dimensions.getScreenHeight * 0.065,
                          child: CustomSelctionContainerWidget(
                            onPressed: () {},
                            buttonText: 'Reset',
                            border: Border.all(
                              width: dimensions.getScreenWidth * 0.005,
                              color: AppColors.primaryColor,
                            ),
                            backgroundColor: Colors.transparent,
                            textColor: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(
                          width: dimensions.getScreenWidth * 0.4,
                          child: CustomLongButtonWidget(
                            height: dimensions.getScreenHeight * 0.065,
                            text: 'Apply ',
                            textFontSize: dimensions.getScreenWidth * 0.04,
                            backgroundColor: AppColors.primaryColor,
                            textColor: AppColors.whiteColor,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
