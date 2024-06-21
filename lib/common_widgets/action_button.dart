import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/text_font_style.dart';
import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';
import '../helpers/ui_helpers.dart';

class ActionButton extends StatelessWidget {
  final String? buttonName;
  final String? iconName;
  final VoidCallback? onTap;
  final bool isSelect;
  double? height;
  double? width;
  double horizontal;
  double veritacl;
  Color? color;

  ActionButton({
    this.buttonName,
    this.iconName,
    this.onTap,
    this.isSelect = false,
    this.height,
    this.width,
    this.horizontal = 18,
    this.veritacl = 10,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
            horizontal: horizontal.w, vertical: veritacl.h),
        decoration: BoxDecoration(
          color: color,
          // color: isSelect == true ? AppColors.c9182E6 : AppColors.c262626,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonName ?? '',
              style: TextFontStyle.headline16w500cfffff,
            ),
            if (iconName != null) ...[
              UIHelper.horizontalSpace(5.w),
              Image.asset(
                iconName!,
                width: 16.w,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
