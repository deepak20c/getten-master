import 'package:flutter/material.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    this.isTrailing = true,
  });

  final String text;
  final bool isTrailing;

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
      automaticallyImplyLeading: false,
      title: Text(
        text,
        style: TextStyle(
          fontSize: dimensions.getScreenWidth * 0.05,
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor,
        ),
      ),
      centerTitle: false,
      actions: isTrailing
          ? [
              Padding(
                padding:
                    EdgeInsets.only(right: dimensions.getScreenWidth * 0.03),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.message_outlined,
                    size: dimensions.getScreenWidth * 0.08,
                    color: AppColors.blackColor,
                  ),
                ),
              ),
            ]
          : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
