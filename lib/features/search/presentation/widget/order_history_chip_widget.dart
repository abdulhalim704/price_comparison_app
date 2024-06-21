import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';

// ignore: must_be_immutable
class OrderHistoryChip extends StatelessWidget {
  String? hours;
  String? item;
  OrderHistoryChip({
    this.hours,
    this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      width: 85.w,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(6.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            hours ?? '',
            style: TextFontStyle.headline14w400c919191
                .copyWith(color: AppColors.c999999),
          ),
          Text(item ?? '',
              style: TextFontStyle.headline14w400c919191
                  .copyWith(color: AppColors.cFFFFFF)),
        ],
      ),
    );
  }
}
