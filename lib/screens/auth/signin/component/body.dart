import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getten/screens/auth/signin/component/sign_in_text_feilds.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/utils/routes/routes_name.dart';
import 'package:getten/widget/custom_lower_column_widget.dart';

class BodySignInScreen extends StatelessWidget {
  const BodySignInScreen({super.key});

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: SvgPicture.asset(AppImages.logoSVG),
              ),
              SizedBox(height: dimensions.getScreenHeight * 0.05),
              RichText(
                text: TextSpan(
                  text: 'Welcome to ',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: dimensions.getScreenHeight * 0.03,
                  ),
                  children: [
                    TextSpan(
                      text: 'GETTEN',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: dimensions.getScreenHeight * 0.03,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: dimensions.getScreenHeight * 0.1),
              const SigninTextFeils(),
              SizedBox(height: dimensions.getScreenHeight * 0.01),
              CustomLowerColumnWidget(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Get.offNamed(RoutesName.signUpScreen);
                  },
                onFacebookTapped: () {},
                onGoogleTapped: () {},
                descriptionText: "Don't have an account? ",
                lastText: 'Sign Up',
              ),
              SizedBox(height: dimensions.getScreenHeight * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
