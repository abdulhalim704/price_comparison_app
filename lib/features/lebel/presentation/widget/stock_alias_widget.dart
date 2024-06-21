import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common_widgets/action_button.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

// ignore: must_be_immutable
class StockAliasWidget extends StatelessWidget {
  final String? imageName;
  final String? logoName;
  final String? stockItem;
  final String? stockOrAlias;
  final String? shipDate;
  VoidCallback? onTapViewAll;
  VoidCallback? onTapPrint;
  Color? color;
  StockAliasWidget({
    this.imageName,
    this.logoName,
    this.stockItem,
    this.stockOrAlias,
    this.shipDate,
    this.onTapViewAll,
    this.onTapPrint,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: Image.asset(
            imageName ?? '',
            height: 220.h,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h, left: 12.w, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                logoName ?? '',
                width: 40,
              ),
              UIHelper.verticalSpace(12.h),
              RichText(
                text: TextSpan(
                  style: TextFontStyle.headline18w600cfffff, // Default style
                  children: <InlineSpan>[
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Text(
                          stockItem ?? '',
                          style: TextFontStyle.headline18w600cfffff,
                        ),
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          stockOrAlias ?? '',
                          style: TextFontStyle.headline18w600cfffff
                              .copyWith(color: color),
                        ),
                      ),
                    ),
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          'Packages',
                          style: TextFontStyle.headline18w600cfffff,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpace(4.h),
              Text(
                'Ship by',
                style: TextFontStyle.headline12w500cffffff
                    .copyWith(color: AppColors.cB2B2B2),
              ),
              UIHelper.verticalSpace(4.h),
              Text(
                shipDate ?? '',
                style: TextFontStyle.headline15w600cfffff,
              ),
              UIHelper.verticalSpace(10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(
                    horizontal: 42.w,
                    veritacl: 12.h,
                    buttonName: 'View All',
                    color: AppColors.c373737,
                    onTap: onTapViewAll,
                  ),
                  ActionButton(
                    horizontal: 42.w,
                    veritacl: 12.h,
                    buttonName: 'Print',
                    iconName: Assets.icons.printerIcon.path,
                    color: AppColors.c373737,
                    onTap: onTapPrint,
                  ),
                ],
              )

              // Container(
              //   alignment: Alignment.center,
              //   padding: EdgeInsets.symmetric(
              //       horizontal: 20.w, vertical: 20.h),
              //   decoration: BoxDecoration(
              //     color: AppColors.c373737,
              //     borderRadius: BorderRadius.circular(12.r),
              //   ),
              //   child: Row(
              //     children: [
              //       Text(
              //         'View All',
              //         style: TextFontStyle.headline16w500cfffff,
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        )
      ],
    );
  }
}
