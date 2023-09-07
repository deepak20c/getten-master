import 'package:flutter/material.dart';
import 'package:getten/screens/details/component/circle_container.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

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
          CircleIconContainer(
            icon: Icons.language,
            text: 'Website',
            onPressed: onWebsite,
          ),
          CircleIconContainer(
            icon: Icons.phone,
            text: 'Phone',
            onPressed: onPhone,
          ),
          CircleIconContainer(
            icon: Icons.location_on,
            text: 'Location',
            onPressed: onLocation,
          ),
          CircleIconContainer(
            icon: Icons.share,
            text: 'Share',
            onPressed: onShare,
          ),
          CircleIconContainer(
            icon: Icons.info,
            text: 'Report',
            onPressed: onReport,
          ),
        ],
      ),
    );
  }
}
