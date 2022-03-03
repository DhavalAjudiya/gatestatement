import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstatement/res/colors.dart';
import 'package:sizer/sizer.dart';

import '../theams/style.dart';
import '../view/bottom_naavigation_bar/controller/homescreen_controller.dart';

class CustomContainer extends StatelessWidget {
  final String headertext;
  final String text;
  final String subText;
  final String predictionText;
  final String prediction;
  final String lastText;
  final String t1run;
  final String t1wk;
  final String t1over;
  final String t2run;
  final String t2wk;
  final String t2over;
  final ImageProvider? backgroundImage;
  final ImageProvider? secondbackgroundImage;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onPressed;
  final Widget icon;

  CustomContainer({
    this.headertext = "",
    this.text = "",
    this.backgroundImage,
    this.secondbackgroundImage,
    this.subText = "",
    this.predictionText = "",
    this.prediction = "",
    this.lastText = "",
    this.margin,
    this.t1run = "",
    this.t1wk = "",
    this.t1over = "",
    this.t2run = "",
    this.t2wk = "",
    this.t2over = "",
    this.onPressed,
    required this.icon,
  });

  final _controller = Get.put(HomeScreenContrroler());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      margin: margin,
      decoration: BoxDecoration(
        color: AppColors.container,
        borderRadius: BorderRadius.circular(7.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.5.w, horizontal: 3.w),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  headertext,
                  style: AppStyle.title,
                ),
                const Spacer(),
                IconButton(onPressed: onPressed, icon: icon),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 3.w,
                          backgroundImage: backgroundImage,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          text,
                          style: AppStyle.cuntryname,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 3.w,
                          backgroundImage: secondbackgroundImage,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          subText,
                          style: AppStyle.cuntryname,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "$t1run",
                          style: AppStyle.cuntryname,
                        ),
                        Text(
                          t1wk,
                          style: AppStyle.cuntryname,
                        ),
                        Text(
                          "$t1over",
                          style: AppStyle.over,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "$t2run",
                          style: AppStyle.cuntryname,
                        ),
                        Text(
                          t2wk,
                          style: AppStyle.cuntryname,
                        ),
                        Text(
                          "$t2over",
                          style: AppStyle.over,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 3.w),
                Container(
                  width: 0.3.w,
                  height: 7.h,
                  color: Color(0xff4E4E4E),
                ),
                SizedBox(width: 3.w),
                Column(
                  children: [
                    Text(
                      predictionText,
                      style: AppStyle.preadiction,
                    ),
                    Text(
                      prediction,
                      style: AppStyle.predication,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 1.2.h,
            ),
            Row(
              children: [
                Text(
                  lastText,
                  style: AppStyle.title,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomLCContainer extends StatelessWidget {
  final String headertext;
  final String text;
  final String subText;
  final String predictionText;
  final String prediction;
  final String lastText;
  final String t1run;
  final String t1wk;
  final String t1over;
  final String t2run;
  final String t2wk;
  final String t2over;
  final ImageProvider? backgroundImage;
  final ImageProvider? secondbackgroundImage;
  final EdgeInsetsGeometry? margin;

  CustomLCContainer({
    this.headertext = "",
    this.text = "",
    this.backgroundImage,
    this.secondbackgroundImage,
    this.subText = "",
    this.predictionText = "",
    this.prediction = "",
    this.lastText = "",
    this.margin,
    this.t1run = "",
    this.t1wk = "",
    this.t1over = "",
    this.t2run = "",
    this.t2wk = "",
    this.t2over = "",
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      margin: margin,
      decoration: BoxDecoration(
        color: AppColors.container,
        borderRadius: BorderRadius.circular(7.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 0.5.w, horizontal: 3.w),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  headertext,
                  style: AppStyle.title,
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    (Icons.notifications),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 3.w,
                          backgroundImage: backgroundImage,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          text,
                          style: AppStyle.cuntryname,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 3.w,
                          backgroundImage: secondbackgroundImage,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          subText,
                          style: AppStyle.cuntryname,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "$t1run/",
                          style: AppStyle.cuntryname,
                        ),
                        Text(
                          t1wk,
                          style: AppStyle.cuntryname,
                        ),
                        Text(
                          "($t1over)",
                          style: AppStyle.over,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "$t2run/",
                          style: AppStyle.cuntryname,
                        ),
                        Text(
                          t2wk,
                          style: AppStyle.cuntryname,
                        ),
                        Text(
                          "($t2over)",
                          style: AppStyle.over,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 3.w),
                Container(
                  width: 0.3.w,
                  height: 7.h,
                  color: Color(0xff4E4E4E),
                ),
                SizedBox(width: 3.w),
                Column(
                  children: [
                    Text(
                      predictionText,
                      style: AppStyle.preadiction,
                    ),
                    Text(
                      prediction,
                      style: AppStyle.predication,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 1.2.h,
            ),
            Row(
              children: [
                Text(
                  lastText,
                  style: AppStyle.title,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
