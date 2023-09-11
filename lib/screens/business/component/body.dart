import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/screens/business/component/business_card.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/utils/routes/routes_name.dart';

class BodyResturantScreen extends StatelessWidget {
  const BodyResturantScreen({super.key});

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
              SizedBox(height: dimensions.getScreenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: dimensions.getScreenWidth * 0.75,
                    height: dimensions.getScreenHeight * 0.05,
                    child: Center(
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
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(RoutesName.filtersScreen);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: dimensions.getScreenWidth * 0.02,
                      ),
                      height: dimensions.getScreenHeight * 0.05,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(
                          dimensions.getScreenWidth * 0.02,
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.filter_list_rounded,
                          size: dimensions.getScreenWidth * 0.07,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: dimensions.getScreenHeight * 0.02),
              SizedBox(
                height: dimensions.getScreenHeight * 0.37 * 4,
                child: ListView.builder(
                  itemCount: 4,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: ((context, index) => const BusinessCard()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
