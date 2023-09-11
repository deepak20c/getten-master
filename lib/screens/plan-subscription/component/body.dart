import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/screens/plan-subscription/component/package_details_row.dart';
import 'package:getten/screens/plan-subscription/component/plan_container.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/utils/routes/routes_name.dart';
import 'package:getten/widget/custom_selection_container.dart';

class BodyPlanSubcriptionScreen extends StatelessWidget {
  const BodyPlanSubcriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: dimensions.getScreenWidth * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: dimensions.getScreenHeight * 0.03,
              ),
              Row(
                children: [
                  SizedBox(
                    width: dimensions.getScreenWidth * 0.25,
                    child: CustomSelctionContainerWidget(
                      buttonText: 'Sliver Plan',
                      border: Border.all(
                        width: dimensions.getScreenWidth * 0.001,
                      ),
                      backgroundColor: Colors.transparent,
                      textColor: AppColors.blackColor,
                    ),
                  ),
                  SizedBox(
                    width: dimensions.getScreenWidth * 0.03,
                  ),
                  SizedBox(
                    width: dimensions.getScreenWidth * 0.25,
                    child: CustomSelctionContainerWidget(
                      buttonText: 'Gold Plan',
                      backgroundColor: AppColors.primaryColor,
                      border: Border.all(
                        width: dimensions.getScreenWidth * 0.001,
                      ),
                      textColor: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: dimensions.getScreenHeight * 0.03,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PlansContainer(
                    totalPeriod: 6,
                    pricePerMonth: 23,
                  ),
                  PlansContainer(
                    totalPeriod: 3,
                    pricePerMonth: 15,
                  ),
                  PlansContainer(
                    totalPeriod: 1,
                    pricePerMonth: 13,
                  ),
                ],
              ),
              SizedBox(
                height: dimensions.getScreenHeight * 0.03,
              ),
              const PackageDetailsRow(
                startText: 'Promotion Power',
                endText: '7X more clients',
              ),
              const PackageDetailsRow(
                startText: 'Extra TOPs included',
                endText: '5 TOPs',
              ),
              const PackageDetailsRow(
                startText: 'Listing in Property',
                endText: '50 Ads',
              ),
              const PackageDetailsRow(
                startText: 'Promotion for selected ads',
                endText: '10 VIP Top+',
              ),
              const PackageDetailsRow(
                startText: 'Ads auto-renew',
                endText: 'Every 12 hours',
              ),
              const PackageDetailsRow(
                startText: 'SMS Notification on mesasge',
                endText: 'Every 12 hours',
                isIncluded: false,
              ),
              const PackageDetailsRow(
                startText: 'Email & Social promotion',
                endText: 'Every 12 hours',
                isIncluded: false,
              ),
              const PackageDetailsRow(
                startText: 'Dedicated personal manager',
                endText: 'Every 12 hours',
                isIncluded: false,
              ),
              const PackageDetailsRow(
                startText: 'Website/ Social inclution',
                endText: 'Every 12 hours',
                isIncluded: false,
              ),
              SizedBox(height: dimensions.getScreenHeight * 0.03),
              InkWell(
                onTap: () {
                  Get.offNamed(RoutesName.navigatorScreen);
                },
                child: Container(
                  width: double.infinity,
                  height: dimensions.getScreenHeight * 0.065,
                  padding: EdgeInsets.symmetric(
                    horizontal: dimensions.getScreenWidth * 0.05,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius:
                        BorderRadius.circular(dimensions.getScreenWidth * 0.02),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Buy',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: dimensions.getScreenWidth * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$23',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: dimensions.getScreenWidth * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
