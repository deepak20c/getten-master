import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/assets/images/images.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/utils/routes/routes_name.dart';

class UserDetailsSection extends StatelessWidget {
  const UserDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: dimensions.getScreenWidth * 0.05,
      ),
      height: dimensions.getScreenHeight * 0.1,
      color: AppColors.whiteColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(AppImages.userPNG),
                radius: dimensions.getScreenHeight * 0.035,
              ),
              SizedBox(
                width: dimensions.getScreenWidth * 0.03,
              ),
              Text.rich(
                TextSpan(
                  text: 'Good Evening!\n',
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w400,
                    fontSize: dimensions.getScreenWidth * 0.035,
                  ),
                  children: [
                    TextSpan(
                      text: 'Alexendar Smith',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: dimensions.getScreenWidth * 0.045,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message_outlined,
                  size: dimensions.getScreenWidth * 0.08,
                  color: AppColors.blackColor,
                ),
              ),
              IconButton(
                onPressed: () {
                  Get.toNamed(RoutesName.qrScreen);
                },
                icon: Icon(
                  Icons.qr_code_scanner_outlined,
                  size: dimensions.getScreenWidth * 0.08,
                  color: AppColors.blackColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
