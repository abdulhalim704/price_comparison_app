import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:price_comparison/helpers/all_routes.dart';
import 'package:price_comparison/helpers/navigation_service.dart';
import 'package:price_comparison/helpers/ui_helpers.dart';

import '../../../common_widgets/app_bar_action_button.dart';
import '../../../constants/text_font_style.dart';
import '../../../dummy_data/dummy_model.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../widget/category_card.dart';
import '../widget/search_product_card.dart';
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
          AppBarActionButton(
            rightPadding: 10.w,
            containerColor: Colors.transparent,
            child: const Icon(Icons.more_vert),
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
