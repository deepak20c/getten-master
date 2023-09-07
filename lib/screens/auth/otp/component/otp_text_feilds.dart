import 'package:flutter/material.dart';
import 'package:getten/screens/auth/reset/reset_password_screen.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_long_button_widget.dart';
import 'package:getten/widget/custom_text_field_widget.dart';

class OTPTextFeilds extends StatefulWidget {
  const OTPTextFeilds({super.key});

  @override
  State<OTPTextFeilds> createState() => _OTPTextFeildsState();
}

class _OTPTextFeildsState extends State<OTPTextFeilds> {
  final TextEditingController _secondDigitController = TextEditingController();
  final TextEditingController _thirdDigitController = TextEditingController();
  final TextEditingController _fouthDigitController = TextEditingController();
  final TextEditingController _fifthDigitController = TextEditingController();
  final TextEditingController _sixthDigitController = TextEditingController();
  final TextEditingController _firstDigitController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'Enter your PIN',
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: dimensions.getScreenHeight * 0.02,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: dimensions.getScreenWidth * 0.1,
              child: CustomTextFieldWidget(
                onEditingComplete: () {},
                validations: (value) {
                  return null;
                },
                hintText: '',
                inputType: TextInputType.phone,
                inputAction: TextInputAction.next,
                controller: _firstDigitController,
              ),
            ),
            SizedBox(
              width: dimensions.getScreenWidth * 0.1,
              child: CustomTextFieldWidget(
                onEditingComplete: () {},
                validations: (value) {
                  return null;
                },
                hintText: '',
                inputType: TextInputType.phone,
                inputAction: TextInputAction.next,
                controller: _secondDigitController,
              ),
            ),
            SizedBox(
              width: dimensions.getScreenWidth * 0.1,
              child: CustomTextFieldWidget(
                onEditingComplete: () {},
                validations: (value) {
                  return null;
                },
                hintText: '',
                inputType: TextInputType.phone,
                inputAction: TextInputAction.next,
                controller: _thirdDigitController,
              ),
            ),
            SizedBox(
              width: dimensions.getScreenWidth * 0.1,
              child: CustomTextFieldWidget(
                onEditingComplete: () {},
                validations: (value) {
                  return null;
                },
                hintText: '',
                inputType: TextInputType.phone,
                inputAction: TextInputAction.next,
                controller: _fouthDigitController,
              ),
            ),
            SizedBox(
              width: dimensions.getScreenWidth * 0.1,
              child: CustomTextFieldWidget(
                onEditingComplete: () {},
                validations: (value) {
                  return null;
                },
                hintText: '',
                inputType: TextInputType.phone,
                inputAction: TextInputAction.next,
                controller: _fifthDigitController,
              ),
            ),
            SizedBox(
              width: dimensions.getScreenWidth * 0.1,
              child: CustomTextFieldWidget(
                onEditingComplete: () {},
                validations: (value) {
                  return null;
                },
                hintText: '',
                inputType: TextInputType.phone,
                inputAction: TextInputAction.next,
                controller: _sixthDigitController,
              ),
            ),
          ],
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'RESEND OTP',
              style: TextStyle(
                color: AppColors.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: dimensions.getScreenWidth * 0.04,
              ),
            ),
            SizedBox(height: dimensions.getScreenHeight * 0.02),
            Text(
              '1:32',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: dimensions.getScreenWidth * 0.04,
              ),
            ),
          ],
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.1),
        CustomLongButtonWidget(
          height: dimensions.getScreenHeight * 0.065,
          text: 'Verify',
          textFontSize: dimensions.getScreenWidth * 0.04,
          backgroundColor: AppColors.primaryColor,
          textColor: AppColors.whiteColor,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const ResetPasswordScreen()),
              ),
            );
          },
        ),
      ],
    );
  }
}
