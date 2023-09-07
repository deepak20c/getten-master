import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:getten/screens/home/home_screen.dart';
import 'package:getten/screens/map/map_screen.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/utils/responsive/dimension.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    AppDimensions dimensions = AppDimensions(context);
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          for (int i = 0; i < list.length; i++)
            Visibility(
              visible: _selectedIndex == i,
              maintainState: true,
              child: list[i],
            ),
        ],
      ),
      bottomNavigationBar: DotNavigationBar(
        enableFloatingNavBar: true,
        currentIndex: _selectedIndex,
        dotIndicatorColor: AppColors.whiteColor,
        backgroundColor: AppColors.whiteColor,
        unselectedItemColor: AppColors.greyScale500Color,
        splashBorderRadius: dimensions.getScreenWidth * 0.1,
        margin: EdgeInsets.zero,
        onTap: (value) {
          _selectedIndex = value;
          setState(() {});
        },
        items: [
          DotNavigationBarItem(
            icon: const Icon(Icons.search),
            selectedColor: AppColors.primaryColor,
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.folder),
            selectedColor: AppColors.primaryColor,
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.person_pin),
            selectedColor: AppColors.primaryColor,
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.bookmark),
            selectedColor: AppColors.primaryColor,
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.menu),
            selectedColor: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}

const list = [
  HomeScreen(),
  MapScreen(),
  HomeScreen(),
  HomeScreen(),
  HomeScreen(),
];
