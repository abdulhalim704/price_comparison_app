import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/action_button.dart';
import '../../../common_widgets/app_bar_action_button.dart';
import '../../../common_widgets/search_widget.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/navigation_service.dart';
import '../../../helpers/ui_helpers.dart';

class LebelDetailsScreen extends StatefulWidget {
  const LebelDetailsScreen({super.key});

  @override
  State<LebelDetailsScreen> createState() => _LebelDetailsScreenState();
}

class _LebelDetailsScreenState extends State<LebelDetailsScreen> {
  final _controller = TextEditingController();

  bool _isCancel = false;
  bool _isShip = false;
  bool isPrint = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          AppBarActionButton(
            rightPadding: 10.w,
            containerColor: Colors.transparent,
            child: Image.asset(
              Assets.icons.refreshIcon.path,
              width: 24.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 25.sp),
            child: GestureDetector(
              onTap: () {
                NavigationService.goBack;
              },
              child: Image.asset(
                Assets.icons.backIcon.path,
                width: 24.w,
              ),
            ),
          ),
        ],
        title: Text("Labels", style: TextFontStyle.headline20w400cfffff),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SearchWidget(
              searchController: _controller,
              hintText: 'Search Sale by name or ID',
            ),
            UIHelper.verticalSpace(12.h),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10.h,
                  );
                },
                shrinkWrap: true,
                itemCount: 10,

                //physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return LebelDetailsCard(
                    productImage: Assets.images.shoes.path,
                    productName: 'Nike Dunk Low',
                    productSubTitle: 'Travis Scott (Men’s)',
                    price: '€192',
                    saleId: '453243',
                    usDollar: 'US 9',
                    dateAndName: 'Thu, 2 May',
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(
                    buttonName: 'Cancel',
                    onTap: () {
                      setState(() {
                        _isCancel = !_isCancel;
                        _isShip = false;
                        isPrint = false;
                        log(_isCancel.toString());
                      });
                    },
                    color: _isCancel == true
                        ? AppColors.c9182E6
                        : AppColors.c262626,
                    isSelect: _isCancel,
                  ),
                  ActionButton(
                    buttonName: 'Ship Items (2)',
                    onTap: () {
                      setState(() {
                        _isShip = !_isShip;
                        _isCancel = false;
                        isPrint = false;
                        log(_isShip.toString());
                      });
                    },
                    isSelect: _isShip,
                    color:
                        _isShip == true ? AppColors.c9182E6 : AppColors.c262626,
                  ),
                  ActionButton(
                    buttonName: 'Print',
                    iconName: Assets.icons.printerIcon.path,
                    onTap: () {
                      setState(() {
                        isPrint = !isPrint;
                        _isShip = false;
                        _isCancel = false;
                        log(isPrint.toString());
                      });
                    },
                    isSelect: isPrint,
                    color:
                        isPrint == true ? AppColors.c9182E6 : AppColors.c262626,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LebelDetailsCard extends StatelessWidget {
  String? productImage;
  String? productName;
  String? productSubTitle;
  String? price;
  String? saleId;
  String? usDollar;
  String? dateAndName;

  LebelDetailsCard({
    this.productImage,
    this.productName,
    this.productSubTitle,
    this.price,
    this.saleId,
    this.usDollar,
    this.dateAndName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: AppColors.c1B1B1B, borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 56.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Image.asset(productImage ?? ''),
              ),
              UIHelper.horizontalSpace(10.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName ?? '',
                    style: TextFontStyle.headline12w500cffffff
                        .copyWith(color: AppColors.cAFAFAF),
                  ),
                  UIHelper.verticalSpace(3.h),
                  Text(
                    productSubTitle ?? '',
                    style: TextFontStyle.headline15w500cfffff,
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: AppColors.c2D3B31,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Text(
                  price ?? '',
                  style: TextFontStyle.headline14w500cfffff
                      .copyWith(color: AppColors.c49C26A),
                ),
              )
            ],
          ),
          UIHelper.verticalSpace(12.h),
          UIHelper.customDivider(),
          UIHelper.verticalSpace(11.h),
          Row(
            children: [
              Text(
                'Sale ID: ',
                style: TextFontStyle.headline12w500cffffff
                    .copyWith(color: AppColors.cAFAFAF),
              ),
              Text(
                saleId ?? '',
                style: TextFontStyle.headline12w500cffffff,
              ),
            ],
          ),
          UIHelper.verticalSpace(6.h),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.c848688),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: const Icon(
                  Icons.remove,
                  color: AppColors.c848688,
                ),
              ),
              UIHelper.horizontalSpace(9.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: AppColors.c2D2D2D,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  usDollar ?? '',
                  style: TextFontStyle.headline14w500cfffff,
                ),
              ),
              UIHelper.horizontalSpace(9.w),
              //when dynamic data are come, then need to use condition for calender color
              // and need to use date formater for the take date
              Container(
                padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
                decoration: BoxDecoration(
                  color: AppColors.c2D2D2D,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      Assets.icons.calendar.path,
                      width: 18.5.w,
                    ),
                    UIHelper.horizontalSpace(4.w),
                    Text(
                      dateAndName ?? '',
                      style: TextFontStyle.headline14w500cfffff,
                    )
                  ],
                ),
              ),
              const Spacer(),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: AppColors.c494949,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Row(
                  children: [
                    Text(
                      'Print',
                      style: TextFontStyle.headline14w600cfffff,
                    ),
                    UIHelper.horizontalSpace(5.w),
                    Image.asset(
                      Assets.icons.printerIcon.path,
                      width: 16.w,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
