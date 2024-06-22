import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class TotalRevenueWidget extends StatelessWidget {
  final String? revenue;
  final String? totaltSalse;
  const TotalRevenueWidget({
    this.totaltSalse,
    this.revenue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.images.totalBanner.path),
        Padding(
          padding: EdgeInsets.only(left: 16.w, top: 12.h),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Revenue of Sales',
                    style: TextFontStyle.headline14w400c919191
                        .copyWith(color: AppColors.cA3A3A3),
                  ),
                  UIHelper.verticalSpace(4.h),
                  Text(
                    totaltSalse ?? '',
                    style: TextFontStyle.headline20w600cffffff,
                  ),
                  UIHelper.verticalSpace(4.h),
                  Row(
                    children: [
                      Image.asset(
                        Assets.icons.dropDownIcon.path,
                        width: 18.w,
                        fit: BoxFit.cover,
                      ),
                      UIHelper.horizontalSpace(4.h),
                      Text(
                        revenue ?? '',
                        style: TextFontStyle.headline15w400cB9B9B9
                            .copyWith(color: AppColors.c49C26A),
                      )
                    ],
                  )
                ],
              ),
              UIHelper.horizontalSpace(25.w),
              Image.asset(
                Assets.images.graphImage.path,
                width: 150,
              )
            ],
          ),
        )
      ],
    );
  }
}
