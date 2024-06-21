import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:price_comparison/helpers/all_routes.dart';
import 'package:price_comparison/helpers/navigation_service.dart';

import '../../../common_widgets/action_button.dart';
import '../../../common_widgets/app_bar_action_button.dart';
import '../../../common_widgets/switch_button.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';
import 'widget/stock_alias_widget.dart';

class LebelScreen extends StatefulWidget {
  const LebelScreen({super.key});

  @override
  State<LebelScreen> createState() => _LebelScreenState();
}

class _LebelScreenState extends State<LebelScreen> {
  final _isStock = ValueNotifier(false);
  final _isAlias = ValueNotifier(false);
  final _isOption = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        title: const Text('Lebels'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Setting',
                    style: TextFontStyle.headline18w600cfffff,
                  ),
                  Text(
                    'Tailor your labels window',
                    style: TextFontStyle.headline13w500c999999
                        .copyWith(color: AppColors.cA0A0A0),
                  ),
                  UIHelper.verticalSpace(12.h),
                ],
              )),
              PopupMenuItem(
                child: ValueListenableBuilder(
                  builder: (context, notifyValue, _) {
                    return SwitchButtonWidget(
                      value: notifyValue,
                      buttonName: 'Stockx',
                      activeColor: AppColors.c49C26A,
                      inActiveColor: AppColors.c606162,
                      onChanged: (bool newvalue) {
                        setState(() {
                          _isStock.value = newvalue;
                          log(newvalue.toString());
                        });
                      },
                    );
                  },
                  valueListenable: _isStock,
                ),
              ),
              PopupMenuItem(
                child: ValueListenableBuilder(
                  builder: (context, notifyValue, _) {
                    return SwitchButtonWidget(
                      value: notifyValue,
                      buttonName: 'Alias',
                      activeColor: AppColors.c49C26A,
                      inActiveColor: AppColors.c606162,
                      onChanged: (bool newvalue) {
                        setState(() {
                          _isAlias.value = newvalue;
                          log(newvalue.toString());
                        });
                      },
                    );
                  },
                  valueListenable: _isAlias,
                ),
              ),
              PopupMenuItem(
                child: ValueListenableBuilder(
                  builder: (context, value, _) {
                    return SwitchButtonWidget(
                      value: value,
                      buttonName: 'Option 3',
                      activeColor: AppColors.c49C26A,
                      inActiveColor: AppColors.c606162,
                      onChanged: (bool newvalue) {
                        setState(() {
                          _isOption.value = newvalue;
                          log(newvalue.toString());
                        });
                      },
                    );
                  },
                  valueListenable: _isOption,
                ),
              ),
            ],
            color: AppColors.themeColor,
            elevation: 2,
          ),
          AppBarActionButton(
            rightPadding: 10.w,
            containerColor: Colors.transparent,
            child: Image.asset(
              Assets.icons.refreshIcon.path,
              width: 20.w,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          children: [
            StockAliasWidget(
              imageName: Assets.images.stockx.path,
              logoName: Assets.icons.stockxLogo.path,
              stockItem: '14',
              shipDate: 'Thu, 2 May',
              stockOrAlias: 'StockX',
              color: AppColors.c49C26A,
              onTapViewAll: () {
                NavigationService.navigateTo(Routes.lebelDetails);
              },
            ),
            UIHelper.verticalSpace(16.h),
            StockAliasWidget(
              imageName: Assets.images.alias.path,
              logoName: Assets.icons.aliasLogoCircle.path,
              stockItem: '11',
              shipDate: 'Thu, 2 May',
              color: AppColors.c7857FF,
              stockOrAlias: 'Alias',
              onTapViewAll: () {
                NavigationService.navigateTo(Routes.lebelDetails);
              },
            ),
          ],
        ),
      ),
    );
  }
}
