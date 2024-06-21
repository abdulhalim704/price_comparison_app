import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class UserInfoCardWidget extends StatelessWidget {
  final String? nameFirstWord;
  final String? userName;
  final String? email;
  final String? id;
  final String? authorized;
  const UserInfoCardWidget({
    this.nameFirstWord,
    this.userName,
    this.email,
    this.id,
    this.authorized,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 13.w, right: 12.w, top: 20.h, bottom: 20),
      decoration: BoxDecoration(
          color: AppColors.c1B1B1B, borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Text(
                  nameFirstWord ?? '',
                  style: TextFontStyle.headline20w700c000000,
                ),
              ),
              UIHelper.horizontalSpace(10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName ?? '',
                    style: TextFontStyle.headline18w600cfffff,
                  ),
                  Text(
                    email ?? '',
                    style: TextFontStyle.headline13w500c999999,
                  ),
                ],
              )
            ],
          ),
          UIHelper.verticalSpace(13.h),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: 150.w,
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: AppColors.c233628,
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      Assets.icons.verifiedIcon.path,
                      width: 20.w,
                    ),
                    UIHelper.horizontalSpace(4.w),
                    Text(
                      authorized ?? '',
                      style: TextFontStyle.headline13w500c999999
                          .copyWith(color: AppColors.c49C26A),
                    )
                  ],
                ),
              ),
              UIHelper.horizontalSpace(15.w),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: AppColors.c494949,
                  borderRadius: BorderRadius.circular(14.r),
                ),
                child: Text(
                  'ID: ${id.toString()}',
                  style: TextFontStyle.headline13w500c999999
                      .copyWith(color: AppColors.cFFFFFF),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(15.h),
        ],
      ),
    );
  }
}
