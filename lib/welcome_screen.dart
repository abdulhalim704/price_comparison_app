import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.amber),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          SizedBox(
            height: 40.h,
          ),
          Icon(Icons.favorite),
          // Image.asset(Assets.icons.splash2.path),
          SizedBox(
            height: 20.h,
          ),
        ]),
      ),
    );
  }
}
