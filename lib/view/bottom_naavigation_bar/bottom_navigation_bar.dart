import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstatement/res/colors.dart';
import 'package:getstatement/view/bottom_naavigation_bar/controller/controller_bottom.dart';
import 'package:sizer/sizer.dart';

class BottomNavigation extends StatelessWidget {
  final pageController = Get.put(BNBController());
  static const routeName = "/bottom_navigation";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => pageController.page[pageController.select.value]),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            backgroundColor: AppColors.container,
            selectedItemColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              color: Colors.white.withOpacity(0.5),
            ),
            unselectedItemColor: Colors.white.withOpacity(0.5),
            currentIndex: pageController.select.value,
            onTap: (value) {
              pageController.select.value = value;
            },
            selectedLabelStyle: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontWeight: FontWeight.w400,
                fontSize: 12),
            items: const [
              BottomNavigationBarItem(
                backgroundColor: AppColors.container,
                icon: Icon(
                  Icons.home,
                  // color: PageController.select.value == 0
                  //     ? const Color(0XFFF3620B)
                  //     : Colors.white,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.container,
                icon: Icon(
                  Icons.sports_cricket,
                  // color: PageController.select.value == 1
                  //     ? const Color(0XFFF3620B)
                  //     : Colors.white,
                ),
                label: "Matches",
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.container,
                icon: Icon(
                  Icons.emoji_events,
                  // color: PageController.select.value == 2
                  //     ? const Color(0XFFF3620B)
                  //     : Colors.white,
                ),
                label: "IPL",
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.container,
                icon: Icon(
                  Icons.person,
                  // color: PageController.select.value == 3
                  //     ? const Color(0XFFF3620B)
                  //     : Colors.white,
                ),
                label: "Expert",
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.container,
                icon: Icon(
                  Icons.more_horiz,
                  // color: PageController.select.value == 4
                  //     ? const Color(0XFFF3620B)
                  //     : Colors.white,
                ),
                label: "More",
              ),
            ],
          ),
        ));
    ;
  }
}
