import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

// ignore: must_be_immutable
class LebelDetailsCard extends StatelessWidget {
  String? productImage;
  String? productName;
  String? productSubTitle;
  String? price;
  String? saleId;
  String? usDollar;
  String? dateAndName;

  LebelDetailsCard({
    this.productImage,
    this.productName,
    this.productSubTitle,
    this.price,
    this.saleId,
    this.usDollar,
    this.dateAndName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: AppColors.c1B1B1B, borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 56.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Image.asset(productImage ?? ''),
              ),
              UIHelper.horizontalSpace(10.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName ?? '',
                    style: TextFontStyle.headline12w500cffffff
                        .copyWith(color: AppColors.cAFAFAF),
                  ),
                  UIHelper.verticalSpace(3.h),
                  Text(
                    productSubTitle ?? '',
                    style: TextFontStyle.headline15w500cfffff,
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.c2D3B31,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Text(
                  price ?? '',
                  style: TextFontStyle.headline14w500cfffff
                      .copyWith(color: AppColors.c49C26A),
                ),
              )
            ],
          ),
          UIHelper.verticalSpace(12.h),
          UIHelper.customDivider(),
          UIHelper.verticalSpace(11.h),
          Row(
            children: [
              Text(
                'Sale ID: ',
                style: TextFontStyle.headline12w500cffffff
                    .copyWith(color: AppColors.cAFAFAF),
              ),
              Text(
                saleId ?? '',
                style: TextFontStyle.headline12w500cffffff,
              ),
            ],
          ),
          UIHelper.verticalSpace(6.h),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.c848688),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: const Icon(
                  Icons.remove,
                  color: AppColors.c848688,
                ),
              ),
              UIHelper.horizontalSpace(9.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: AppColors.c2D2D2D,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  usDollar ?? '',
                  style: TextFontStyle.headline14w500cfffff,
                ),
              ),
              UIHelper.horizontalSpace(9.w),
              //when dynamic data are come, then need to use condition for calender color
              // and need to use date formater for the take date
              Container(
                padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: AppColors.c2D2D2D,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      Assets.icons.calendar.path,
                      width: 18.5.w,
                    ),
                    UIHelper.horizontalSpace(4.w),
                    Text(
                      dateAndName ?? '',
                      style: TextFontStyle.headline14w500cfffff,
                    )
                  ],
                ),
              ),
              const Spacer(),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: AppColors.c494949,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  children: [
                    Text(
                      'Print',
                      style: TextFontStyle.headline14w600cfffff,
                    ),
                    UIHelper.horizontalSpace(5.w),
                    Image.asset(
                      Assets.icons.printerIcon.path,
                      width: 16.w,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
