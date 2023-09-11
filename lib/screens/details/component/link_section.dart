import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';
import 'package:getten/widget/custom_circle_container.dart';

class LinkSection extends StatelessWidget {
  final void Function()? onWebsite;
  final void Function()? onPhone;
  final void Function()? onLocation;
  final void Function()? onShare;
  final void Function()? onReport;
  const LinkSection({
    super.key,
    this.onWebsite,
    this.onPhone,
    this.onLocation,
    this.onShare,
    this.onReport,
  });

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Container(
      height: dimensions.getScreenHeight * 0.15,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomCircleIconContainer(
            icon: Icons.language,
            text: 'Website',
            onPressed: onWebsite,
            iconBGColor: AppColors.disabledColor.withOpacity(0.5),
            iconColor: AppColors.whiteColor,
            textColor: AppColors.whiteColor,
          ),
          CustomCircleIconContainer(
            icon: Icons.phone,
            text: 'Phone',
            onPressed: onPhone,
            iconBGColor: AppColors.disabledColor.withOpacity(0.5),
            iconColor: AppColors.whiteColor,
            textColor: AppColors.whiteColor,
          ),
          CustomCircleIconContainer(
            icon: Icons.location_on,
            text: 'Location',
            onPressed: onLocation,
            iconBGColor: AppColors.disabledColor.withOpacity(0.5),
            iconColor: AppColors.whiteColor,
            textColor: AppColors.whiteColor,
          ),
          CustomCircleIconContainer(
            icon: Icons.share,
            text: 'Share',
            onPressed: onShare,
            iconBGColor: AppColors.disabledColor.withOpacity(0.5),
            iconColor: AppColors.whiteColor,
            textColor: AppColors.whiteColor,
          ),
          CustomCircleIconContainer(
            icon: Icons.info,
            text: 'Report',
            onPressed: onReport,
            iconBGColor: AppColors.disabledColor.withOpacity(0.5),
            iconColor: AppColors.whiteColor,
            textColor: AppColors.whiteColor,
          ),
        ],
      ),
    );
  }
}
