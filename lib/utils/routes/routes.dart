import 'package:get/get.dart';
import 'package:getten/screens/auth/confirm/confirm_screen.dart';
import 'package:getten/screens/auth/forget/forget_password_screen.dart';
import 'package:getten/screens/auth/otp/forget_otp_screen.dart';
import 'package:getten/screens/auth/reset/reset_password_screen.dart';
import 'package:getten/screens/auth/signin/signin_screen.dart';
import 'package:getten/screens/auth/signup/signup_screen.dart';
import 'package:getten/screens/business/business_screen.dart';
import 'package:getten/screens/details/details_screen.dart';
import 'package:getten/screens/filter/filter_screen.dart';
import 'package:getten/screens/home/home_screen.dart';
import 'package:getten/screens/map/map_screen.dart';
import 'package:getten/screens/navigator/navigator_screen.dart';
import 'package:getten/screens/other-category/other_category_screen.dart';
import 'package:getten/screens/plan-subscription/plan_supscription_screen.dart';
import 'package:getten/screens/popular-category/popular_category_screen.dart';
import 'package:getten/screens/profile/profile_screen.dart';
import 'package:getten/screens/qr/qr_screen.dart';
import 'package:getten/screens/settings/settings_screen.dart';
import 'package:getten/screens/welcome/onboarding/onboarding_screen.dart';
import 'package:getten/screens/welcome/splash/splash_screen.dart';
import 'package:getten/utils/routes/routes_name.dart';

class AppRoutes {
  static appRoutes() => [
        // Main
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.onboardingScreen,
          page: () => const OnboardingScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.navigatorScreen,
          page: () => const NavigatorScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),

        // Auth
        GetPage(
          name: RoutesName.signInScreen,
          page: () => const SignInScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.signUpScreen,
          page: () => const SignUpScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.forgetPasswordScreen,
          page: () => const ForgetPasswordScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.optScreen,
          page: () => const ForgetOTPScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.resetScreen,
          page: () => const ResetPasswordScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.confrimScreen,
          page: () => const ConfrimScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),

        // Home
        GetPage(
          name: RoutesName.homeScreen,
          page: () => const HomeScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.mapScreen,
          page: () => const MapScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.profileScreen,
          page: () => const ProfileScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        // GetPage(
        //   name: RoutesName.savedScreen,
        //   page: () => const (),
        //   transition: Transition.rightToLeft,
        //   transitionDuration: const Duration(milliseconds: 250),
        // ),
        GetPage(
          name: RoutesName.settingScreen,
          page: () => const SettingScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),

        // Category
        GetPage(
          name: RoutesName.popularCategoryScreen,
          page: () => const PopularCategoryScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.otherCategoryScreen,
          page: () => const OtherCategoryScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.businessScreen,
          page: () => const BusinessScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.detailsScreen,
          page: () => const DetailsScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),

        // Others
        GetPage(
          name: RoutesName.filtersScreen,
          page: () => const FilterScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.subcriptionScreen,
          page: () => const PlanSubcriptionScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
        GetPage(
          name: RoutesName.qrScreen,
          page: () => const QRScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 250),
        ),
      ];
}
