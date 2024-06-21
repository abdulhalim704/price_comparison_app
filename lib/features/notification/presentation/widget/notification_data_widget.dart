import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class NotificationWidget extends StatelessWidget {
  final String? notificationTitle;
  final String? hours;
  final String? icon;
  const NotificationWidget({
    this.notificationTitle,
    this.hours,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.c424343),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Image.asset(
            icon ?? '',
            width: 22.w,
          ),
          UIHelper.horizontalSpace(8.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationTitle ?? '',
                  style: TextFontStyle.headline14w500cfffff,
                ),
                UIHelper.verticalSpace(4.h),
                Text(
                  hours ?? '',
                  style: TextFontStyle.headline13w500c999999,
                ),
              ],
            ),
          ),
          Image.asset(
            Assets.icons.deleteIcon.path,
            width: 20.w,
          ),
        ],
      ),
    );
  }
}
