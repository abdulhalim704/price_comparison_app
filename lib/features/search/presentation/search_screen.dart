import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:price_comparison/helpers/all_routes.dart';
import 'package:price_comparison/helpers/navigation_service.dart';
import 'package:price_comparison/helpers/ui_helpers.dart';
import '../../../common_widgets/app_bar_action_button.dart';
import '../../../common_widgets/switch_button.dart';
import '../../../constants/text_font_style.dart';
import '../../../dummy_data/dummy_model.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import 'widget/category_card.dart';
import 'widget/search_product_card.dart';
import '../../../common_widgets/search_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController();
  bool isCategorySelect = false;
  int _selectedCategory = -1;
  int _onFav = -1;

  final _isPrice = ValueNotifier(false);
  final _isPayoutPrice = ValueNotifier(false);
  final _isVatProfit = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        actions: [
          AppBarActionButton(
              rightPadding: 5.w,
              containerColor: Colors.transparent,
              child: Image.asset(
                Assets.icons.heart.path,
                width: 24.w,
              )),
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
                    'Tailor your comparison window',
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
                      buttonName: 'Listing Price',
                      activeColor: AppColors.c49C26A,
                      inActiveColor: AppColors.c606162,
                      onChanged: (bool newvalue) {
                        setState(() {
                          _isPrice.value = newvalue;
                          log(newvalue.toString());
                        });
                      },
                    );
                  },
                  valueListenable: _isPrice,
                ),
              ),
              PopupMenuItem(
                child: ValueListenableBuilder(
                  builder: (context, notifyValue, _) {
                    return SwitchButtonWidget(
                      value: notifyValue,
                      buttonName: 'Payout Price',
                      activeColor: AppColors.c49C26A,
                      inActiveColor: AppColors.c606162,
                      onChanged: (bool newvalue) {
                        setState(() {
                          _isPayoutPrice.value = newvalue;
                          log(newvalue.toString());
                        });
                      },
                    );
                  },
                  valueListenable: _isPayoutPrice,
                ),
              ),
              PopupMenuItem(
                child: ValueListenableBuilder(
                  builder: (context, value, _) {
                    return SwitchButtonWidget(
                      value: value,
                      buttonName: 'VAT-inclusive Profit',
                      activeColor: AppColors.c49C26A,
                      inActiveColor: AppColors.c606162,
                      onChanged: (bool newvalue) {
                        setState(() {
                          _isVatProfit.value = newvalue;
                          log(newvalue.toString());
                        });
                      },
                    );
                  },
                  valueListenable: _isVatProfit,
                ),
              ),
            ],
            color: AppColors.themeColor,
            elevation: 2,
          ),
        ],
        title:
            Text('Search Product', style: TextFontStyle.headline20w400cfffff),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        children: [
          SearchWidget(searchController: _searchController),
          SizedBox(
            height: 65.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: dummyCetegoryData.length,
              itemBuilder: (context, index) {
                final item = dummyCetegoryData[index];
                return CategoryCard(
                  ontap: () {
                    setState(() {
                      _selectedCategory = index;
                    });
                  },
                  isCategorySelect: _selectedCategory == index,
                  categoryName: item.name,
                );
              },
            ),
          ),
          UIHelper.verticalSpace(8.h),
          Text(
            'Results',
            style: TextFontStyle.headline14w400c919191,
          ),
          UIHelper.verticalSpace(12.h),
          Expanded(
            child: GridView.builder(
              itemCount: searchResult.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.w,
                  mainAxisSpacing: 8.h),
              itemBuilder: (context, index) {
                final item = searchResult[index];
                return SearchProductCard(
                  favOnTap: () {
                    setState(() {
                      _onFav = index;
                      log('$_onFav');
                    });
                  },
                  productImage: item.productImage,
                  productTitle: item.title,
                  productSubTitle: item.productSubTitle,
                  onFav: _onFav == index,
                  onTap: () =>
                      NavigationService.navigateTo(Routes.productDetails),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
