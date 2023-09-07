import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:getten/screens/auth/signin/signin_screen.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_long_button_widget.dart';

class BodyConfrimScreen extends StatelessWidget {
  const BodyConfrimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: dimensions.getScreenWidth * 0.05,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SvgPicture.asset(AppImages.confrimSVG),
              SizedBox(height: dimensions.getScreenHeight * 0.05),
              Text(
                'Password Reset Successfully',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: dimensions.getScreenWidth * 0.05,
                ),
              ),
              SizedBox(height: dimensions.getScreenHeight * 0.02),
              Text(
                'Your password has been reset successfully. Click the given button to get access to app.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.greyScale700Color,
                  fontSize: dimensions.getScreenWidth * 0.035,
                ),
              ),
              SizedBox(height: dimensions.getScreenHeight * 0.05),
              SizedBox(
                width: dimensions.getScreenWidth * 0.5,
                child: CustomLongButtonWidget(
                  height: dimensions.getScreenHeight * 0.065,
                  text: 'Done',
                  textFontSize: dimensions.getScreenWidth * 0.04,
                  backgroundColor: AppColors.primaryColor,
                  textColor: AppColors.whiteColor,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const SignInScreen()),
                      ),
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
