import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_slider_widget.dart';

class ImagesStack extends StatelessWidget {
  const ImagesStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Stack(
      children: [
        CustomCarouselSlider(
          viewportFraction: 1.0,
          height: dimensions.getScreenHeight * 0.3,
          imagesURL: [
            AppImages.resturant2PNG,
            AppImages.resturant2PNG,
            AppImages.resturant2PNG,
            AppImages.resturant2PNG,
          ],
        ),
        InkWell(
          onTap: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          child: Container(
            margin: EdgeInsets.only(
              left: dimensions.getScreenWidth * 0.03,
              top: dimensions.getScreenWidth * 0.03,
            ),
            height: dimensions.getScreenWidth * 0.1,
            width: dimensions.getScreenWidth * 0.1,
            decoration: BoxDecoration(
              color: AppColors.disabledColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(
                dimensions.getScreenWidth * 0.2,
              ),
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.whiteColor,
            ),
          ),
        )
      ],
    );
  }
}
