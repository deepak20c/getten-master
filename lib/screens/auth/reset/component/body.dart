import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getten/screens/auth/reset/component/reset_text_feilds.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/responsive/dimension.dart';

class BodyResetPasswordScreen extends StatelessWidget {
  const BodyResetPasswordScreen({super.key});

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: dimensions.getScreenHeight * 0.01),
              IconButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_sharp,
                ),
              ),
              SizedBox(height: dimensions.getScreenHeight * 0.05),
              Center(child: SvgPicture.asset(AppImages.resetSVG)),
              SizedBox(height: dimensions.getScreenHeight * 0.05),
              const HeadingsForget(
                heading: 'Ipsum Sed Eiusmed',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
              ),
              SizedBox(height: dimensions.getScreenHeight * 0.05),
              const ResetTextFeils(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeadingsForget extends StatelessWidget {
  const HeadingsForget({
    super.key,
    required this.heading,
    required this.description,
  });

  final String heading;
  final String description;

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          heading,
          style: TextStyle(
            color: AppColors.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: dimensions.getScreenWidth * 0.05,
          ),
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.02),
        Text(
          description,
          style: TextStyle(
            color: AppColors.greyScale700Color,
            fontSize: dimensions.getScreenWidth * 0.03,
          ),
        ),
      ],
    );
  }
}
