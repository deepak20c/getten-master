import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/screens/auth/signin/signin_screen.dart';
import 'package:getten/screens/welcome/onboarding/component/cicrcle_progress_bar.dart';
import 'package:getten/screens/welcome/onboarding/component/onboarding_widget.dart';
import 'package:getten/state/onboarding_state.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/models/onbarding/data.dart';
import 'package:getten/utils/responsive/dimension.dart';

class BodyOnboardingScreen extends StatelessWidget {
  final onboardingController = Get.put(OnboardingController());

  BodyOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    final PageController pageController = PageController();

    return Padding(
      padding: EdgeInsets.symmetric(vertical: dimensions.getScreenWidth * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: dimensions.getScreenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ignore: unrelated_type_equality_checks
              pageController != 0
                  ? IconButton(
                      onPressed: () {
                        pageController.previousPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        size: dimensions.getScreenWidth * 0.05,
                      ),
                    )
                  : const SizedBox(),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInScreen(),
                    ), //MaterialPageRoute
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: dimensions.getScreenWidth * 0.045,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: dimensions.getScreenHeight * 0.05,
          ),
          Container(
            padding: EdgeInsets.all(dimensions.getScreenWidth * 0.02),
            height: dimensions.getScreenHeight * 0.6,
            width: double.infinity,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                onboardingController.setCurrentPage(value);
              },
              itemCount: onboardingItems.length,
              itemBuilder: (context, index) {
                final image = onboardingItems[index].image;
                final description = onboardingItems[index].description;
                final headingText = onboardingItems[index].headingText;
                final tagLine = onboardingItems[index].tagLine;
                return OnboardingItemWidget(
                  description: description,
                  imageURL: image,
                  headingText: headingText,
                  tagLine: tagLine,
                );
              },
            ),
          ),
          SizedBox(height: dimensions.getScreenHeight * 0.05),
          Obx(
            () => Padding(
              padding: EdgeInsets.only(right: dimensions.getScreenWidth * 0.05),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: dimensions.getScreenWidth * 0.2,
                      height: dimensions.getScreenWidth * 0.2,
                      child: CircleProgressBar(
                        backgroundColor: Colors.white,
                        foregroundColor: AppColors.primaryColor,
                        value: ((onboardingController.currentPage + 1) *
                            1.0 /
                            onboardingItems.length),
                      ),
                    ),
                    Container(
                      height: dimensions.getScreenWidth * 0.15,
                      width: dimensions.getScreenWidth * 0.15,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryColor,
                      ),
                      child: IconButton(
                        onPressed: () {
                          onboardingController.currentPage !=
                                  onboardingItems.length - 1
                              ? pageController.nextPage(
                                  duration: const Duration(milliseconds: 100),
                                  curve: Curves.ease,
                                )
                              : () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SignInScreen(),
                                    ), //MaterialPageRoute
                                  );
                                };
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                        iconSize: dimensions.getScreenWidth * 0.08,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
