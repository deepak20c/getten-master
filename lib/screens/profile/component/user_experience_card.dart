import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_selection_container.dart';

class UserExpereinceCard extends StatelessWidget {
  const UserExpereinceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: dimensions.getScreenWidth * 0.05,
        vertical: dimensions.getScreenWidth * 0.03,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: dimensions.getScreenWidth * 0.02,
          vertical: dimensions.getScreenHeight * 0.01,
        ),
        height: dimensions.getScreenHeight * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            dimensions.getScreenWidth * 0.01,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: dimensions.getScreenWidth * 0.05,
              color: AppColors.whiteColor,
              blurStyle: BlurStyle.solid,
              spreadRadius: 5,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: dimensions.getScreenHeight * 0.07,
                  width: dimensions.getScreenHeight * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      dimensions.getScreenWidth * 0.02,
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AppImages.beautySpaPNG),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      child: Text(
                        'Share your experie...',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: dimensions.getScreenWidth * 0.05,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        'Do you recomment this...',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: dimensions.getScreenWidth * 0.04,
                          color: AppColors.greyScale800Color,
                        ),
                      ),
                    ),
                    SizedBox(height: dimensions.getScreenHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: dimensions.getScreenWidth * 0.16,
                          height: dimensions.getScreenHeight * 0.05,
                          child: CustomSelctionContainerWidget(
                            onPressed: () {},
                            buttonText: 'Yes',
                            border: Border.all(
                              width: dimensions.getScreenWidth * 0.005,
                              color: AppColors.blackColor,
                            ),
                            backgroundColor: Colors.transparent,
                            textColor: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(width: dimensions.getScreenHeight * 0.005),
                        SizedBox(
                          width: dimensions.getScreenWidth * 0.16,
                          height: dimensions.getScreenHeight * 0.05,
                          child: CustomSelctionContainerWidget(
                            onPressed: () {},
                            buttonText: 'No',
                            border: Border.all(
                              width: dimensions.getScreenWidth * 0.005,
                              color: AppColors.blackColor,
                            ),
                            backgroundColor: Colors.transparent,
                            textColor: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(width: dimensions.getScreenHeight * 0.005),
                        SizedBox(
                          width: dimensions.getScreenWidth * 0.2,
                          height: dimensions.getScreenHeight * 0.05,
                          child: CustomSelctionContainerWidget(
                            onPressed: () {},
                            buttonText: 'Maybe',
                            border: Border.all(
                              width: dimensions.getScreenWidth * 0.005,
                              color: AppColors.blackColor,
                            ),
                            backgroundColor: Colors.transparent,
                            textColor: AppColors.blackColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
