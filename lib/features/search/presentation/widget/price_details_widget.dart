import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

// ignore: must_be_immutable
class PriceDetailsWidget extends StatelessWidget {
  String? size;
  String? subSize;
  String? lowestAsk;
  String? subLowestAsk;
  String? bid;
  String? subBid;
  String? profit;
  Color? color;
  PriceDetailsWidget({
    this.size,
    this.subSize,
    this.lowestAsk,
    this.subLowestAsk,
    this.bid,
    this.subBid,
    this.profit,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.w),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8.r), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  size ?? '',
                  style: TextFontStyle.headline14w500cfffff,
                ),
                UIHelper.verticalSpace(4.h),
                Text(
                  subSize ?? '',
                  style: TextFontStyle.headline14w500cfffff,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lowestAsk ?? '',
                style: TextFontStyle.headline14w500cfffff,
              ),
              UIHelper.verticalSpace(4.h),
              Text(
                subLowestAsk ?? '',
                style: TextFontStyle.headline14w500cfffff,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bid ?? '',
                style: TextFontStyle.headline14w500cfffff,
              ),
              UIHelper.verticalSpace(4.h),
              Text(
                subBid ?? '',
                style: TextFontStyle.headline14w500cfffff,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.c2D3B31,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Text(
              profit ?? '',
              style: TextFontStyle.headline14w500cfffff
                  .copyWith(color: AppColors.c49C26A),
            ),
          )
        ],
      ),
    );
  }
}
