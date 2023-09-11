import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getten/utils/routes/routes.dart';
import 'package:getten/utils/routes/routes_name.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // TODO: BACKDEND DEVELOPER MUST CAHNGE ALL THE NECESSARY PLACES FOR NETWORD IAMGES (LIEKE USER PROFILE , CATEGORY IAMGES ETC)
  // Right now all images are asset images

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.white,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GETTEN',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      // home: const NavigatorScreen(),
      initialRoute: RoutesName.splashScreen,
      getPages: AppRoutes.appRoutes(),
    );
  }
}
