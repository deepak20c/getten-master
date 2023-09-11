import 'package:flutter/material.dart';
import 'package:getten/screens/profile/component/button_row.dart';
import 'package:getten/screens/profile/component/profile_information.dart';
import 'package:getten/screens/profile/component/user_experience_card.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class BodyProfileScreen extends StatelessWidget {
  const BodyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: dimensions.getScreenHeight * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          const UserInformation(),
          SizedBox(height: dimensions.getScreenHeight * 0.02),
          const ButtonRow(),
          SizedBox(height: dimensions.getScreenHeight * 0.02),
          Divider(
            color: AppColors.greyScale400Color,
            thickness: dimensions.getScreenWidth * 0.03,
          ),
          SizedBox(height: dimensions.getScreenHeight * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: dimensions.getScreenWidth * 0.05,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Share your experience',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: dimensions.getScreenWidth * 0.05,
                  color: AppColors.blackColor,
                ),
              ),
            ),
          ),
          SizedBox(height: dimensions.getScreenHeight * 0.02),
          SizedBox(
            height: dimensions.getScreenHeight * 0.23 * 3,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) => const UserExpereinceCard(),
            ),
          )
        ],
      ),
    ));
  }
}
