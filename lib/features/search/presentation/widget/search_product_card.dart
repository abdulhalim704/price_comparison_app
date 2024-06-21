import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class SearchProductCard extends StatelessWidget {
  String? productImage;
  String? productTitle;
  String? productSubTitle;
  bool? onFav;
  VoidCallback? favOnTap;
  VoidCallback? onTap;

  SearchProductCard({
    this.productImage,
    this.productTitle,
    this.productSubTitle,
    this.favOnTap,
    this.onTap,
    this.onFav,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 160.w,
            decoration: BoxDecoration(
                color: AppColors.c1C1C1C,
                borderRadius: BorderRadius.circular(8.r)),
            child: Padding(
              padding: EdgeInsets.only(top: 12.h, left: 12.w, bottom: 8.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: favOnTap,
                    child: Image.asset(
                      Assets.icons.heart.path,
                      color:
                          onFav == true ? AppColors.cFF3366 : AppColors.cB0B0B0,
                      width: 22.w,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w, right: 6.w),
                    child: Image.asset(
                      productImage ?? '',
                      height: 74.h,
                    ),
                  ),
                  UIHelper.verticalSpace(6.h),
                  Text(
                    productTitle ?? '',
                    style: TextFontStyle.headline16w500cfffff
                        .copyWith(fontSize: 14),
                  ),
                  Text(
                    productSubTitle ?? '',
                    style: TextFontStyle.headline16w500cfffff
                        .copyWith(fontSize: 14),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
