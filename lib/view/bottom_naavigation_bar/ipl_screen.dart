import 'package:flutter/material.dart';

import '../../theams/style.dart';

class IPLScreen extends StatelessWidget {
  const IPLScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "IPLScreen",
              style: AppStyle.preadiction,
            ),
          ],
        ),
      ),
    );
  }
}
