import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theams/style.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MoreScreen",
              style: AppStyle.preadiction,
            ),
          ],
        ),
      ),
    );
  }
}
