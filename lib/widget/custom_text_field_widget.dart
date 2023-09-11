import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/constant/constant.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final void Function()? onEditingComplete;
  final String? Function(String?)? validations;

  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.inputType,
    this.onEditingComplete,
    required this.inputAction,
    this.validations,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      onEditingComplete: onEditingComplete,
      textInputAction: inputAction,
      validator: validations,
      style: const TextStyle(),
      decoration: InputDecoration(
        counterText: "",
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.greyScale500Color,
        ),
        focusedBorder: border,
        enabledBorder: border,
        errorBorder: border,
      ),
    );
  }
}
