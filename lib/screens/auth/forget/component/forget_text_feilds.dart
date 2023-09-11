import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/utils/routes/routes_name.dart';
import 'package:getten/widget/custom_long_button_widget.dart';
import 'package:getten/widget/custom_text_field_widget.dart';

class ForgetTextFeils extends StatefulWidget {
  const ForgetTextFeils({super.key});

  @override
  State<ForgetTextFeils> createState() => _ForgetTextFeilsState();
}

class _ForgetTextFeilsState extends State<ForgetTextFeils> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Email Address',
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: dimensions.getScreenHeight * 0.02,
          ),
        ),
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
        SizedBox(height: dimensions.getScreenHeight * 0.2),
        CustomLongButtonWidget(
          height: dimensions.getScreenHeight * 0.065,
          text: 'Send',
          textFontSize: dimensions.getScreenWidth * 0.04,
          backgroundColor: AppColors.primaryColor,
          textColor: AppColors.whiteColor,
          onPressed: () {
            Get.toNamed(RoutesName.optScreen);
          },
        ),
      ],
    );
  }
}
