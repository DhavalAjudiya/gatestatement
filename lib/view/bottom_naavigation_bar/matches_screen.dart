import 'package:flutter/material.dart';

import '../../theams/style.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MatchesScreen",
              style: AppStyle.preadiction,
            ),
          ],
        ),
      ),
    );
  }
}
