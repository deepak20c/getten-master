import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getten/screens/auth/signin/signin_screen.dart';
import 'package:getten/screens/auth/signup/component/create_tabs.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_lower_column_widget.dart';

class BodySignUpScreen extends StatelessWidget {
  const BodySignUpScreen({super.key});

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
              SizedBox(height: dimensions.getScreenHeight * 0.03),
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
              const Text(
                'Continue your account as: ',
                style: TextStyle(
                  color: AppColors.blackColor,
                ),
              ),
              SizedBox(height: dimensions.getScreenHeight * 0.05),
              CreateCustomerorBusinessTab(),
              SizedBox(height: dimensions.getScreenHeight * 0.01),
              CustomLowerColumnWidget(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const SignInScreen()),
                      ),
                    );
                  },
                onFacebookTapped: () {},
                onGoogleTapped: () {},
                descriptionText: "Already have an account? ",
                lastText: 'Sign In',
              ),
              SizedBox(height: dimensions.getScreenHeight * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
