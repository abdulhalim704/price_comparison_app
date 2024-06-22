import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class TotalSaleInvoicePending extends StatelessWidget {
  final String? totalSale;
  final String? downSale;
  final String? totalInvoice;
  final String? downInvoice;
  final String? totalPending;
  final String? upPending;
  const TotalSaleInvoicePending({
    this.totalSale,
    this.downSale,
    this.totalInvoice,
    this.downInvoice,
    this.totalPending,
    this.upPending,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: AppColors.c1C1C1C,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Sales',
                  style: TextFontStyle.headline14w400c919191
                      .copyWith(color: AppColors.c999999),
                ),
                UIHelper.verticalSpace(5.h),
                Text(
                  totalSale ?? '',
                  style: TextFontStyle.headline20w600cffffff,
                ),
                UIHelper.verticalSpace(6.h),
                Row(
                  children: [
                    Image.asset(
                      Assets.icons.downDropDownIcon.path,
                      width: 16.w,
                      fit: BoxFit.cover,
                      color: AppColors.cE950A4,
                    ),
                    UIHelper.horizontalSpace(4.h),
                    Text(
                      downSale ?? '',
                      style: TextFontStyle.headline15w400cB9B9B9
                          .copyWith(color: AppColors.cE950A4),
                    ),
                  ],
                ),
                Image.asset(
                  Assets.images.graphImage.path,
                  width: 180,
                ),
                UIHelper.verticalSpace(10.h),
              ],
            ),
          ),
        ),
        UIHelper.horizontalSpace(10.w),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.c1C1C1C,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Invoices',
                      style: TextFontStyle.headline14w400c919191
                          .copyWith(color: AppColors.c999999),
                    ),
                    UIHelper.verticalSpace(4.h),
                    Row(
                      children: [
                        Text(
                          totalInvoice ?? '',
                          style: TextFontStyle.headline20w600cffffff,
                        ),
                        UIHelper.horizontalSpace(6.w),
                        Image.asset(
                          Assets.icons.downDropDownIcon.path,
                          width: 16.w,
                          fit: BoxFit.cover,
                          color: AppColors.cE950A4,
                        ),
                        UIHelper.horizontalSpace(4.h),
                        Text(
                          downInvoice ?? '',
                          style: TextFontStyle.headline15w400cB9B9B9
                              .copyWith(color: AppColors.cE950A4),
                        ),
                        UIHelper.horizontalSpace(15.w)
                      ],
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpace(10.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                decoration: BoxDecoration(
                  color: AppColors.c1C1C1C,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Invoices Pending',
                      style: TextFontStyle.headline14w400c919191
                          .copyWith(color: AppColors.c999999),
                    ),
                    UIHelper.verticalSpace(4.h),
                    Row(
                      children: [
                        Text(
                          totalPending ?? '',
                          style: TextFontStyle.headline20w600cffffff,
                        ),
                        UIHelper.horizontalSpace(6.w),
                        Image.asset(
                          Assets.icons.dropDownIcon.path,
                          width: 16.w,
                          fit: BoxFit.cover,
                        ),
                        UIHelper.horizontalSpace(4.h),
                        Text(
                          upPending ?? '',
                          style: TextFontStyle.headline15w400cB9B9B9
                              .copyWith(color: AppColors.c49C26A),
                        ),
                        UIHelper.horizontalSpace(15.w)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
