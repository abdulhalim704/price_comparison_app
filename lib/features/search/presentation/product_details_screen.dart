import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:price_comparison/helpers/all_routes.dart';
import 'package:price_comparison/helpers/navigation_service.dart';
import 'package:price_comparison/helpers/toast.dart';
import 'package:price_comparison/helpers/ui_helpers.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import '../../../constants/text_font_style.dart';
import '../../../dummy_data/dummy_model.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../providers/stock_alice_provider.dart';
import 'widget/order_history_chip_widget.dart';
import 'widget/order_id_widget.dart';
import 'widget/price_details_widget.dart';
import 'widget/price_discount_card.dart';
import 'widget/price_heading.dart';
import 'product_details_graph.dart';
import 'widget/stock_alias_select.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final String textToCopy = 'FD9749-400';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Product Details Screen'),
        actions: [
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
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StockAliasSelectButton(),
              UIHelper.verticalSpace(12.h),
              Row(
                children: [
                  Container(
                    width: 140.w,
                    height: 105.h,
                    decoration: BoxDecoration(
                      color: AppColors.cFFFFFF,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Image.asset(Assets.images.shoes.path),
                  ),
                  UIHelper.horizontalSpace(13.w),
                  Column(
                    children: [
                      const DropdownButtonExample(),
                      UIHelper.verticalSpace(9.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          PriceDiscountCard(
                            text: 'Price',
                          ),
                          UIHelper.horizontalSpace(9.w),
                          PriceDiscountCard(
                            text: 'Discount',
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              UIHelper.verticalSpace(13.h),
              Text(
                'Nike Air Jordan Low Travis Scott',
                style: TextFontStyle.headline20w600cffffff,
              ),
              UIHelper.verticalSpace(5.h),
              OrderIdWidget(textToCopy: textToCopy),
              UIHelper.verticalSpace(10.h),
              SizedBox(
                height: 35.h,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10.w,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: orderHistoryData.length,
                  itemBuilder: (context, index) {
                    final item = orderHistoryData[index];
                    return OrderHistoryChip(
                      hours: item.hours,
                      item: item.orderitem,
                    );
                  },
                ),
              ),
              UIHelper.verticalSpace(18.h),
              const PriceHeading(),
              UIHelper.verticalSpace(10.h),
              ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 8.h,
                  );
                },
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      log('index is $index');
                      NavigationService.navigateTo(Routes.productDetailsGraph);
                    },
                    child: PriceDetailsWidget(

                      size: '5',
                      subSize: '35.5',
                      lowestAsk: '107€',
                      subLowestAsk: '94.34€',
                      bid: '65€',
                      subBid: '32.85€',
                      profit: '61.48€',
                      color: colorChange(index),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Color colorChange(int index) {
    if (index % 2 == 0) {
      return AppColors.c1C1C1C;
    } else {
      return AppColors.c292929;
    }
  }
}






