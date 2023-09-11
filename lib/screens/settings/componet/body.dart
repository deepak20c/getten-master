import 'package:flutter/material.dart';
import 'package:getten/screens/settings/componet/setting_tile.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class BodySettingScreen extends StatelessWidget {
  const BodySettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: dimensions.getScreenHeight * 0.04,
            ),
            Container(
              height: dimensions.getScreenHeight * 0.052 * settings.length,
              padding: EdgeInsets.symmetric(
                horizontal: dimensions.getScreenWidth * 0.05,
              ),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: settings.length,
                itemBuilder: (context, index) {
                  final item = settings[index];
                  return SettingTile(
                    text: item['text'] as String,
                    icon: item['icon'] as Icon,
                    onPressed: item['onPressed'] as VoidCallback,
                  );
                },
              ),
            ),
            Container(
              color: AppColors.disabledColor.withOpacity(0.5),
              width: double.infinity,
              height: dimensions.getScreenHeight * 0.06,
              padding: EdgeInsets.symmetric(
                horizontal: dimensions.getScreenWidth * 0.05,
                vertical: dimensions.getScreenHeight * 0.01,
              ),
              child: Text(
                'Getten for Business',
                style: TextStyle(
                  fontSize: dimensions.getScreenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: AppColors.greyScale800Color,
                ),
              ),
            ),
            Container(
              height:
                  dimensions.getScreenHeight * 0.052 * businessSettings.length,
              padding: EdgeInsets.symmetric(
                horizontal: dimensions.getScreenWidth * 0.05,
              ),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: businessSettings.length,
                itemBuilder: (context, index) {
                  final item = businessSettings[index];
                  return SettingTile(
                    text: item['text'] as String,
                    icon: item['icon'] as Icon,
                    onPressed: item['onPressed'] as VoidCallback,
                  );
                },
              ),
            ),
            Container(
              color: AppColors.disabledColor.withOpacity(0.5),
              width: double.infinity,
              height: dimensions.getScreenHeight * 0.06,
              padding: EdgeInsets.symmetric(
                horizontal: dimensions.getScreenWidth * 0.05,
                vertical: dimensions.getScreenHeight * 0.01,
              ),
              child: Text(
                'Community',
                style: TextStyle(
                  fontSize: dimensions.getScreenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: AppColors.greyScale800Color,
                ),
              ),
            ),
            Container(
              height:
                  dimensions.getScreenHeight * 0.052 * communitySettings.length,
              padding: EdgeInsets.symmetric(
                horizontal: dimensions.getScreenWidth * 0.05,
              ),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: communitySettings.length,
                itemBuilder: (context, index) {
                  final item = communitySettings[index];
                  return SettingTile(
                    text: item['text'] as String,
                    icon: item['icon'] as Icon,
                    onPressed: item['onPressed'] as VoidCallback,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
