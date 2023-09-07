import 'package:flutter/material.dart';
import 'package:getten/screens/map/map_screen.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class MapSearch extends StatelessWidget {
  const MapSearch({
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
          'Location',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: dimensions.getScreenWidth * 0.05,
            color: AppColors.blackColor,
          ),
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: dimensions.getScreenWidth * 0.6,
              height: dimensions.getScreenHeight * 0.06,
              child: SearchBar(
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
                hintText: 'Your recent location',
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
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const MapScreen()),
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: dimensions.getScreenWidth * 0.02,
                ),
                height: dimensions.getScreenHeight * 0.06,
                width: dimensions.getScreenWidth * 0.18,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(
                    dimensions.getScreenWidth * 0.02,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Map',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: dimensions.getScreenHeight * 0.02),
        Divider(
          color: AppColors.blackColor,
          thickness: dimensions.getScreenWidth * 0.0003,
        ),
      ],
    );
  }
}
