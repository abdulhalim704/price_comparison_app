import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:price_comparison/constants/text_font_style.dart';
import 'package:price_comparison/providers/stock_alice_provider.dart';
import 'package:provider/provider.dart';
import '../../../common_widgets/app_bar_action_button.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/all_routes.dart';
import '../../../helpers/navigation_service.dart';
import '../../../helpers/ui_helpers.dart';
import 'widgets/day_ways_button.dart';
import 'widgets/letest_search_widget.dart';
import 'widgets/total_revenue_widget.dart';
import 'widgets/total_sale_invoice_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late DayWaysProvider dayWaysProvider;

  @override
  void initState() {
    dayWaysProvider = context.read<DayWaysProvider>();
    listenOnTap();
    super.initState();
  }

  void listenOnTap() {
    dayWaysProvider.addListener(
      () {
        log('select index ${dayWaysProvider.index}');

        /// index== 0 then means onTap on 1Day
        /// index ==1 then means onTap on 30 day
        /// index == 2 then means onTap on total
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Price Comparison',
          style: TextFontStyle.headline20w400cfffff,
        ),
        actions: [
          AppBarActionButton(
            onTap: () {
              NavigationService.navigateTo(Routes.notification);
            },
            containerColor: AppColors.c626262,
            child: Image.asset(
              Assets.icons.notification.path,
              height: 30.h,
            ),
          ),
          AppBarActionButton(
            containerColor: AppColors.cFFFFFF,
            child: Text(
              'B',
              style: TextFontStyle.headline20w700c000000,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(UIHelper.kDefaulutPadding()),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back, Boss-1',
                style: TextFontStyle.headline20w600cffffff
                    .copyWith(fontSize: 22.sp),
              ),
              UIHelper.verticalSpace(5.h),
              Text(
                'Lorem ipsum dolor sit amet consectetur. Tellus mauris faucibus tempor venenatis.',
                style: TextFontStyle.headline14w400c919191
                    .copyWith(color: AppColors.c878787),
              ),
              UIHelper.verticalSpace(16.h),
              const StockAliasSelectButton(),
              UIHelper.verticalSpace(16.h),
              const TotalRevenueWidget(
                totaltSalse: '€ 128,342.2',
                revenue: '€5',
              ),
              UIHelper.verticalSpace(16.h),
              const TotalSaleInvoicePending(
                totalSale: '€ 433,231',
                downSale: '€5',
                totalInvoice: '934',
                downInvoice: '23',
                totalPending: '125',
                upPending: '51',
              ),
              UIHelper.verticalSpace(18.h),
              Row(
                children: [
                  Text(
                    'Latest Searches',
                    style: TextFontStyle.headline18w600cfffff,
                  ),
                ],
              ),
              UIHelper.verticalSpace(12.h),
              SizedBox(
                height: 140.h,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return UIHelper.horizontalSpace(10.w);
                  },
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return LetestSearchItemWidget(
                      imageName: Assets.images.shoes.path,
                      searchType: 'Lowest Ask',
                      price: '€231.2',
                      productTitle: 'Nike Air Jordan Low Trav..',
                      usSize: '8',
                      euSize: '45',
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
