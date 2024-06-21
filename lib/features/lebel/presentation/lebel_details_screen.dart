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
import 'widget/lebel_details_card_widget.dart';

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
                physics: const BouncingScrollPhysics(),
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
