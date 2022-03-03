import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstatement/theams/style.dart';
import 'package:getstatement/view/tabbar/completed.dart';
import 'package:getstatement/view/tabbar/live.dart';
import 'package:sizer/sizer.dart';
import '../../res/string.dart';

import '../tabbar/upcoming.dart';
import 'controller/homescreen_controller.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home_screen";

  HomeScreen({Key? key}) : super(key: key);
  final _homecontroller = Get.put(HomeScreenContrroler());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.only(top: 1.w, left: 2.w, right: 2.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppString.title,
                style: AppStyle.current,
              ),
              SizedBox(height: 2.h),
              TabBar(
                unselectedLabelColor: Colors.white,
                isScrollable: true,
                indicatorColor: Colors.green,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.green,
                controller: _homecontroller.tabController,
                tabs: const [
                  Tab(
                    child: Text(
                      AppString.upcoming,
                    ),
                  ),
                  Tab(
                    child: Text(
                      AppString.live,
                    ),
                  ),
                  Tab(
                    child: Text(
                      AppString.completed,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _homecontroller.tabController,
                  children: [
                    UpComing(),
                    Live(),
                    Completed(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
