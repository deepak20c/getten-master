import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/state/password_state.dart';
import 'package:getten/utils/assets/colors/colors.dart';

class CustomPasswordFeildWidget extends StatelessWidget {
  final TextEditingController controller;
  final void Function()? onEditingComplete;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;
  final String hintText;
  final bool isVisiable;

  const CustomPasswordFeildWidget({
    Key? key,
    required this.controller,
    this.onEditingComplete,
    this.validator,
    this.textInputAction,
    this.isVisiable = false,
    required this.hintText,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final passwordVisibilityController =
        Get.put(PasswordVisibilityController());

    return Obx(
      () => TextFormField(
        obscuringCharacter: '*',
        textInputAction: textInputAction,
        onEditingComplete: onEditingComplete,
        keyboardType: TextInputType.visiblePassword,
        controller: controller,
        obscureText: !passwordVisibilityController.isVisible,
        focusNode: focusNode,
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackColor.withOpacity(0.3),
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackColor.withOpacity(0.3),
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.blackColor.withOpacity(0.3),
            ),
          ),
          counterText: '',
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColors.greyScale500Color,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.visibility,
              color: passwordVisibilityController.isVisible
                  ? AppColors.primaryColor
                  : AppColors.greyScale500Color,
            ),
            onPressed: () {
              passwordVisibilityController.toggleVisibility();
            },
          ),
        ),
        validator: validator,
      ),
    );
  }
}
