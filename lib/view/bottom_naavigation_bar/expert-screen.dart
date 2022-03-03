import 'package:flutter/material.dart';

import '../../theams/style.dart';

class ExpertScreen extends StatelessWidget {
  const ExpertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ExpertScreen",
              style: AppStyle.preadiction,
            ),
          ],
        ),
      ),
    );
  }
}
