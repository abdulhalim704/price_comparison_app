
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';

// ignore: must_be_immutable
class PriceDiscountCard extends StatelessWidget {
  String? text;
  PriceDiscountCard({
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.c171717,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.c333333, width: 1.5.w),
      ),
      child: Text(
        text ?? '',
        style: TextFontStyle.headline15w400cB9B9B9,
      ),
    );
  }
}
