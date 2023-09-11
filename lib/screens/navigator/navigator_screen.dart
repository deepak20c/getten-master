import 'package:flutter/material.dart';
import 'package:getten/screens/home/home_screen.dart';
import 'package:getten/screens/map/map_screen.dart';
import 'package:getten/screens/profile/profile_screen.dart';
import 'package:getten/screens/settings/settings_screen.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({Key? key}) : super(key: key);

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: selectedIndex,
              children: const [
                HomeScreen(),
                MapScreen(),
                ProfileScreen(),
                ProfileScreen(),
                SettingScreen(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SweetNavBar(
        currentIndex: selectedIndex,
        paddingBackgroundColor: AppColors.primaryBGColor,
        items: [
          SweetNavBarItem(
            sweetActive: const Icon(
              Icons.home,
              color: AppColors.primaryColor,
            ),
            sweetIcon: const Icon(
              Icons.home_outlined,
              color: AppColors.blackColor,
            ),
            sweetLabel: 'Home',
          ),
          SweetNavBarItem(
            sweetActive: const Icon(
              Icons.map,
              color: AppColors.primaryColor,
            ),
            sweetIcon: const Icon(
              Icons.map_outlined,
              color: AppColors.blackColor,
            ),
            sweetLabel: 'Map',
          ),
          SweetNavBarItem(
            sweetActive: const Icon(
              Icons.person_pin,
              color: AppColors.primaryColor,
            ),
            sweetIcon: const Icon(
              Icons.person_pin_circle_outlined,
              color: AppColors.blackColor,
            ),
            sweetLabel: 'Profile',
          ),
          SweetNavBarItem(
            sweetActive: const Icon(
              Icons.bookmark,
              color: AppColors.primaryColor,
            ),
            sweetIcon: const Icon(
              Icons.bookmark_outline,
              color: AppColors.blackColor,
            ),
            sweetLabel: 'Saved',
          ),
          SweetNavBarItem(
            sweetActive: const Icon(
              Icons.menu,
              color: AppColors.primaryColor,
            ),
            sweetIcon: const Icon(
              Icons.menu_outlined,
              color: AppColors.blackColor,
            ),
            sweetLabel: 'Menu',
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
