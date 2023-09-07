import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/responsive/dimension.dart';

class SocialMediaLogins extends StatelessWidget {
  final void Function()? onFacebookTap;
  final void Function()? onGoogleTap;

  const SocialMediaLogins({
    super.key,
    this.onFacebookTap,
    this.onGoogleTap,
  });

  @override
  Widget build(BuildContext context) {
    final AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: onGoogleTap,
              child: Container(
                height: dimensions.getScreenHeight * 0.06,
                width: dimensions.getScreenWidth * 0.35,
                decoration: BoxDecoration(
                  color: AppColors.socialButtonBG.withOpacity(0.4),
                  border: Border.all(
                    color: AppColors.whiteColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    dimensions.getScreenWidth * 0.02,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImages.facebookSVG),
                    Text(
                      'Google',
                      style: TextStyle(
                        fontSize: dimensions.getScreenWidth * 0.05,
                        color: AppColors.socialButtonBG,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: onFacebookTap,
              child: Container(
                height: dimensions.getScreenHeight * 0.06,
                width: dimensions.getScreenWidth * 0.35,
                decoration: BoxDecoration(
                  color: AppColors.socialButtonBG.withOpacity(0.4),
                  border: Border.all(
                    color: AppColors.whiteColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    dimensions.getScreenWidth * 0.02,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppImages.facebookSVG),
                    Text(
                      'Facebook',
                      style: TextStyle(
                        fontSize: dimensions.getScreenWidth * 0.05,
                        color: AppColors.socialButtonBG,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
