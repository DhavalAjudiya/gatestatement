import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstatement/view/bottom_naavigation_bar/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'controller/firstscreen_controller.dart';
import 'view/bottom_naavigation_bar/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          theme: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          debugShowCheckedModeBanner: false,
          initialBinding: AppBiding(),
          initialRoute: BottomNavigation.routeName,
          getPages: [
            GetPage(
                name: BottomNavigation.routeName,
                page: () => BottomNavigation(),
                transition: Transition.rightToLeft),
            GetPage(
                name: HomeScreen.routeName,
                page: () => HomeScreen(),
                transition: Transition.rightToLeft),
          ],
        );
      },
    );
  }
}

class AppBiding implements Bindings {
  @override
  void dependencies() {
    Get.put(
      FirstController(),
    );
  }
}
