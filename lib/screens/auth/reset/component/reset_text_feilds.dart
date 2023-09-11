import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/utils/routes/routes_name.dart';
import 'package:getten/widget/custom_long_button_widget.dart';
import 'package:getten/widget/password_textfields_widget.dart';

class ResetTextFeils extends StatefulWidget {
  const ResetTextFeils({super.key});

  @override
  State<ResetTextFeils> createState() => _ResetTextFeilsState();
}

class _ResetTextFeilsState extends State<ResetTextFeils> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confrimPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Password',
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: dimensions.getScreenHeight * 0.02,
          ),
        ),
        CustomPasswordFeildWidget(
          hintText: 'Enter your password',
          controller: _passwordController,
          textInputAction: TextInputAction.next,
          onEditingComplete: () {},
          validator: (value) {
            return null;
          },
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.05),
        Text(
          'Confirm Password',
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: dimensions.getScreenHeight * 0.02,
          ),
        ),
        CustomPasswordFeildWidget(
          textInputAction: TextInputAction.done,
          hintText: 'Re-enter your password',
          controller: _confrimPasswordController,
          onEditingComplete: () {},
          validator: (value) {
            return null;
          },
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.1),
        CustomLongButtonWidget(
          height: dimensions.getScreenHeight * 0.065,
          text: 'Reset Password',
          textFontSize: dimensions.getScreenWidth * 0.04,
          backgroundColor: AppColors.primaryColor,
          textColor: AppColors.whiteColor,
          onPressed: () {
            Get.offNamed(RoutesName.confrimScreen);
          },
        ),
      ],
    );
  }
}
