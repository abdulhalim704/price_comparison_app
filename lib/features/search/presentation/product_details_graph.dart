import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:price_comparison/features/graph/graph_2.dart';
import 'package:price_comparison/helpers/navigation_service.dart';
import 'package:price_comparison/helpers/ui_helpers.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import 'widget/order_id_widget.dart';
import 'widget/price_discount_card.dart';
import 'widget/stock_alias_select.dart';

class ProductDetailsGraphScreen extends StatefulWidget {
  const ProductDetailsGraphScreen({super.key});

  @override
  State<ProductDetailsGraphScreen> createState() =>
      _ProductDetailsGraphScreenState();
}

class _ProductDetailsGraphScreenState extends State<ProductDetailsGraphScreen> {
  final String textToCopy = 'FD9749-400';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Product Details'),
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
              Row(
                children: [
                  const Expanded(
                      child: TitleDetailsUiItem(
                    title: 'Lowest Ask',
                    price: '129',
                  )),
                  UIHelper.horizontalSpace(5.w),
                  const Expanded(
                      child: TitleDetailsUiItem(
                    title: 'Highest Bid',
                    price: '197',
                  )),
                  UIHelper.horizontalSpace(5.w),
                  const Expanded(
                      child: TitleDetailsUiItem(
                    title: 'Profit',
                    price: '43',
                    color: Colors.green,
                  )),
                ],
              ),
              UIHelper.verticalSpace(30.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 8.w,
                    width: 8.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF5694D9),
                    ),
                  ),
                  Flexible(
                      child: Text(
                    '8 US | Payouts | StockX',
                    style: TextFontStyle.headline14w400c919191
                        .copyWith(color: Colors.white),
                  ))
                ],
              ),
              AspectRatio(
                aspectRatio: 1.94,
                child: Graph2(),
              ),
              UIHelper.verticalSpace(10.h),

              /// header of size date and price
              const SizeDatePriceHeader(),
              UIHelper.verticalSpace(10.h),

              /// details or body of size date and price
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
                  return SizePriceDetailsItemUi(
                    size: 'US 9',
                    time: '9:56 PM',
                    date: 'Apr 22, 2024',
                    price: '94.34€',
                    color: colorChange(index),
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

class SizeDatePriceHeader extends StatelessWidget {
  const SizeDatePriceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.c1C1C1C)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Size',
            style: TextFontStyle.headline14w500cfffff,
          ),
          Text(
            'Lowest Ask',
            style: TextFontStyle.headline14w500cfffff,
          ),
          Text(
            'Highest Bid',
            style: TextFontStyle.headline14w500cfffff,
          ),
          Text(
            'Profit',
            style: TextFontStyle.headline14w500cfffff,
          ),
        ],
      ),
    );
  }
}

class TitleDetailsUiItem extends StatelessWidget {
  final String title, price;
  final Color? color;

  const TitleDetailsUiItem(
      {super.key, required this.title, required this.price, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: AppColors.c1C1C1C,
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextFontStyle.headline14w400c919191,
          ),
          UIHelper.verticalSpace(2.w),
          Text(
            '€$price',
            style: TextFontStyle.headline15w600cfffff
                .copyWith(fontSize: 22.sp, color: color),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class SizePriceDetailsItemUi extends StatelessWidget {
  String? size, date, time, price;

  Color? color;
  SizePriceDetailsItemUi({
    this.size,
    this.date,
    this.time,
    this.price,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.w),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8.r), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: Text(
              date ?? '',
              style: TextFontStyle.headline14w500cfffff,
            ),
          ),
          Text(
            time ?? '',
            style: TextFontStyle.headline14w500cfffff,
          ),
          Text(
            size ?? '',
            style: TextFontStyle.headline14w500cfffff,
          ),
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
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  final List<String> _dropdownItems = [
    'Region 1',
    'Region 2',
    'Region 3',
    'Region 4'
  ];
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 190.w,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: AppColors.c171717,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.c333333, width: 1.5.w),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: _selectedItem,
            hint: Text(
              'Region',
              style: TextFontStyle.headline15w400cB9B9B9,
            ),
            icon: Transform.rotate(
              angle: 90 * 3.14159 / 180, // Rotate the icon by 90 degrees
              child:
                  const Icon(Icons.arrow_forward_ios, color: AppColors.cFFFFFF),
            ),
            dropdownColor: AppColors.c262626,
            style: TextFontStyle.headline15w400cB9B9B9,
            items: _dropdownItems.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  style: TextFontStyle.headline15w400cB9B9B9,
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedItem = newValue;
              });
            },
          ),
        ),
      ),
    );
  }
}
