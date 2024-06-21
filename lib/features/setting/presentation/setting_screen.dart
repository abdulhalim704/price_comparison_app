import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_widgets/action_button.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Setting'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                  left: 13.w, right: 12.w, top: 20.h, bottom: 20),
              decoration: BoxDecoration(
                  color: AppColors.c1B1B1B,
                  borderRadius: BorderRadius.circular(12.r)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 16.h),
                        decoration: BoxDecoration(
                            color: AppColors.cFFFFFF,
                            borderRadius: BorderRadius.circular(8.r)),
                        child: Text(
                          'B',
                          style: TextFontStyle.headline20w700c000000,
                        ),
                      ),
                      UIHelper.horizontalSpace(10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Boss-1',
                            style: TextFontStyle.headline18w600cfffff,
                          ),
                          Text(
                            'boss-1@gmail.com',
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 4.h),
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
                              'Authenticated',
                              style: TextFontStyle.headline13w500c999999
                                  .copyWith(color: AppColors.c49C26A),
                            )
                          ],
                        ),
                      ),
                      UIHelper.horizontalSpace(15.w),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 4.h),
                        decoration: BoxDecoration(
                          color: AppColors.c494949,
                          borderRadius: BorderRadius.circular(14.r),
                        ),
                        child: Text(
                          'ID: 1043232',
                          style: TextFontStyle.headline13w500c999999
                              .copyWith(color: AppColors.cFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  UIHelper.verticalSpace(15.h),
                ],
              ),
            ),
            UIHelper.verticalSpace(10.h),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              decoration: BoxDecoration(
                color: AppColors.c9182E6,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Log Out',
                    style: TextFontStyle.headline16w500cfffff,
                  ),
                  UIHelper.horizontalSpace(5.w),
                  Image.asset(
                    Assets.icons.logoutIcon.path,
                    width: 22.w,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
