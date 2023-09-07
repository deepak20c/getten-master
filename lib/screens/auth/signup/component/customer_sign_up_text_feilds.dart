import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_long_button_widget.dart';
import 'package:getten/widget/custom_small_heading_widget.dart';
import 'package:getten/widget/custom_text_field_widget.dart';
import 'package:getten/widget/password_textfields_widget.dart';

class CustomerTextFeilds extends StatefulWidget {
  const CustomerTextFeilds({super.key});

  @override
  State<CustomerTextFeilds> createState() => _CustomerTextFeildsState();
}

class _CustomerTextFeildsState extends State<CustomerTextFeilds> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _confrimPasswordController =
      TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const CustomSmallHeading(text: 'Name'),
        CustomTextFieldWidget(
          onEditingComplete: () {},
          validations: (value) {
            return null;
          },
          hintText: 'Enter your name',
          inputType: TextInputType.name,
          inputAction: TextInputAction.next,
          controller: _nameController,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
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
        const CustomSmallHeading(text: 'Phone Number'),
        CustomTextFieldWidget(
          onEditingComplete: () {},
          validations: (value) {
            return null;
          },
          hintText: 'Enter your phone number',
          inputType: TextInputType.phone,
          inputAction: TextInputAction.next,
          controller: _phoneController,
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.03),
        const CustomSmallHeading(text: 'Password'),
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
        const CustomSmallHeading(text: 'Confirm Password'),
        CustomPasswordFeildWidget(
          textInputAction: TextInputAction.done,
          hintText: 'Re-enter your password',
          controller: _confrimPasswordController,
          onEditingComplete: () {},
          validator: (value) {
            return null;
          },
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.05),
        CustomLongButtonWidget(
          text: 'Sign Up',
          height: dimensions.getScreenHeight * 0.065,
          textFontSize: dimensions.getScreenWidth * 0.04,
          backgroundColor: AppColors.primaryColor,
          textColor: AppColors.whiteColor,
          onPressed: () {},
        ),
      ],
    );
  }
}
