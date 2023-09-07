import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class PersonSearch extends StatelessWidget {
  const PersonSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Person (Capacity)',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: dimensions.getScreenWidth * 0.05,
            color: AppColors.blackColor,
          ),
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.02),
        SearchBar(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(
                color: AppColors.blackColor,
                width: dimensions.getScreenWidth * 0.001,
              ),
              borderRadius: BorderRadius.circular(
                dimensions.getScreenWidth * 0.03,
              ),
            ),
          ),
          hintText: 'Enter person capacity',
          hintStyle: MaterialStatePropertyAll(
            TextStyle(
              fontSize: dimensions.getScreenWidth * 0.04,
              color: AppColors.greyScale500Color,
            ),
          ),
          elevation: const MaterialStatePropertyAll(0),
          backgroundColor: const MaterialStatePropertyAll(
            AppColors.whiteColor,
          ),
        ),
      ],
    );
  }
}
