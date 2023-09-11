import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/utils/routes/routes_name.dart';
import 'package:getten/widget/custom_long_button_widget.dart';
import 'package:getten/widget/custom_small_heading_widget.dart';
import 'package:getten/widget/custom_text_field_widget.dart';
import 'package:getten/widget/password_textfields_widget.dart';

class SigninTextFeils extends StatefulWidget {
  const SigninTextFeils({super.key});

  @override
  State<SigninTextFeils> createState() => _SigninTextFeilsState();
}

class _SigninTextFeilsState extends State<SigninTextFeils> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const CustomSmallHeading(text: 'Email Address'),
        CustomTextFieldWidget(
          onEditingComplete: () {},
          validations: (value) {
            return null;
          },
          hintText: 'Enter your email address',
          inputType: TextInputType.emailAddress,
          inputAction: TextInputAction.next,
          controller: _emailController,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'Password'),
        CustomPasswordFeildWidget(
          hintText: 'Enter your password',
          controller: _passwordController,
          onEditingComplete: () {},
          validator: (value) {
            return null;
          },
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.05),
        CustomLongButtonWidget(
          height: dimensions.getScreenHeight * 0.065,
          text: 'Sign In',
          textFontSize: dimensions.getScreenWidth * 0.04,
          backgroundColor: AppColors.primaryColor,
          textColor: AppColors.whiteColor,
          onPressed: () {
            Get.offNamed(RoutesName.navigatorScreen);
          },
        ),
      ],
    );
  }
}
