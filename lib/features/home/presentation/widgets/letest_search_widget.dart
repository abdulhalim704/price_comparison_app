import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class LetestSearchItemWidget extends StatelessWidget {
  final String? imageName;
  final String? searchType;
  final String? price;
  final String? productTitle;
  final String? usSize;
  final String? euSize;

  const LetestSearchItemWidget({
    this.imageName,
    this.searchType,
    this.price,
    this.productTitle,
    this.usSize,
    this.euSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.c1C1C1C,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: AppColors.cFFFFFF,
                      borderRadius: BorderRadius.circular(6.r)),
                  child: Image.asset(imageName ?? '')),
              UIHelper.horizontalSpace(10.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.,
                children: [
                  Text(
                    searchType ?? '',
                    style: TextFontStyle.headline13w500c999999,
                  ),
                  UIHelper.verticalSpace(6.h),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                    decoration: BoxDecoration(
                        color: AppColors.c383838,
                        borderRadius: BorderRadius.circular(5.r)),
                    child: Text(
                      price ?? '',
                      style: TextFontStyle.headline14w600cfffff,
                    ),
                  ),
                ],
              )
            ],
          ),
          UIHelper.verticalSpace(8.h),
          Text(
            productTitle ?? '',
            maxLines: 1,
            overflow: TextOverflow
                .ellipsis, // This ensures the text is truncated with an ellipsis
            style: TextFontStyle.headline14w600cfffff,
          ),
          UIHelper.verticalSpace(6.h),
          RichText(
            text: TextSpan(
              style: TextFontStyle.headline12w500cffffff
                  .copyWith(color: AppColors.c999999),
              children: <InlineSpan>[
                TextSpan(
                  text: 'US $usSize ',
                ),
                // WidgetSpan(
                //   child:
                //       SizedBox(width: 10.w), // Adding horizontal space
                // ),
                TextSpan(
                  text: '| EU $euSize',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
