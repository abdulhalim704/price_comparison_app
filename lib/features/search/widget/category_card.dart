import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/text_font_style.dart';
import '../../../gen/colors.gen.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  final String? categoryName;
  bool? isCategorySelect;
  VoidCallback? ontap;
  CategoryCard({
    this.categoryName,
    this.isCategorySelect,
    this.ontap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.all(6.sp),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              decoration: BoxDecoration(
                color: isCategorySelect == true
                    ? AppColors.c9182E6
                    : AppColors.c212121,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Text(
                categoryName ?? '',
                style: TextFontStyle.headline14w600cfffff,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
