import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../gen/colors.gen.dart';

// ignore: must_be_immutable
class AppBarActionButton extends StatelessWidget {
  Color? containerColor;
  Widget? child;
  double? width;
  double? rightPadding;
  AppBarActionButton({
    this.child,
    this.containerColor,
    this.width = 40,
    this.rightPadding = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width!.w,
      margin: EdgeInsets.only(right: rightPadding!),
      decoration: BoxDecoration(
        color: containerColor,
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
