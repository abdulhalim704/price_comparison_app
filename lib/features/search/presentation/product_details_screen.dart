import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
import '../widget/price_heading.dart';

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
                  return PriceDetailsWidget(
                    size: '5',
                    subSize: '35.5',
                    lowestAsk: '107€',
                    subLowestAsk: '94.34€',
                    bid: '65€',
                    subBid: '32.85€',
                    profit: '61.48€',
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

class PriceDetailsWidget extends StatelessWidget {
  String? size;
  String? subSize;
  String? lowestAsk;
  String? subLowestAsk;
  String? bid;
  String? subBid;
  String? profit;
  Color? color;
  PriceDetailsWidget({
    this.size,
    this.subSize,
    this.lowestAsk,
    this.subLowestAsk,
    this.bid,
    this.subBid,
    this.profit,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  size ?? '',
                  style: TextFontStyle.headline14w500cfffff,
                ),
                UIHelper.verticalSpace(4.h),
                Text(
                  subSize ?? '',
                  style: TextFontStyle.headline14w500cfffff,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lowestAsk ?? '',
                style: TextFontStyle.headline14w500cfffff,
              ),
              UIHelper.verticalSpace(4.h),
              Text(
                subLowestAsk ?? '',
                style: TextFontStyle.headline14w500cfffff,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bid ?? '',
                style: TextFontStyle.headline14w500cfffff,
              ),
              UIHelper.verticalSpace(4.h),
              Text(
                subBid ?? '',
                style: TextFontStyle.headline14w500cfffff,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: AppColors.c2D3B31,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Text(
              profit ?? '',
              style: TextFontStyle.headline14w500cfffff
                  .copyWith(color: AppColors.c49C26A),
            ),
          )
        ],
      ),
    );
  }
}

class OrderHistoryChip extends StatelessWidget {
  String? hours;
  String? item;
  OrderHistoryChip({
    this.hours,
    this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      width: 85.w,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(6.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            hours ?? '',
            style: TextFontStyle.headline14w400c919191
                .copyWith(color: AppColors.c999999),
          ),
          Text(item ?? '',
              style: TextFontStyle.headline14w400c919191
                  .copyWith(color: AppColors.cFFFFFF)),
        ],
      ),
    );
  }
}

class OrderIdWidget extends StatelessWidget {
  const OrderIdWidget({
    super.key,
    required this.textToCopy,
  });

  final String textToCopy;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(textToCopy,
            style: TextFontStyle.headline14w400c919191
                .copyWith(color: AppColors.c929292)),
        UIHelper.horizontalSpace(4.w),
        GestureDetector(
          onTap: () {
            Clipboard.setData(ClipboardData(text: textToCopy));
            ToastUtil.showShortToast('Copied');
          },
          child: Image.asset(
            Assets.icons.copyIcon.path,
            width: 18.w,
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class PriceDiscountCard extends StatelessWidget {
  String? text;
  PriceDiscountCard({
    this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.c171717,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.c333333, width: 1.5.w),
      ),
      child: Text(
        text ?? '',
        style: TextFontStyle.headline15w400cB9B9B9,
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

class StockAliasSelectButton extends StatelessWidget {
  const StockAliasSelectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StockAliasProvider>(
      builder: (context, provider, child) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
          height: 40.h,
          decoration: BoxDecoration(
            color: AppColors.c262626,
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            double width = constraints.maxWidth;

            return Stack(
              alignment: Alignment.center,
              children: [
                AnimatedPositioned(
                  left: provider.isSelected ? width / 2 : 0,
                  duration: const Duration(milliseconds: 200),
                  width: width / 2,
                  child: Container(
                    height: 30.h,
                    width: width / 2,
                    decoration: BoxDecoration(
                      color: AppColors.c626262,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: provider.selectStock,
                      child: Text(
                        'StockX',
                        style: TextFontStyle.headline12w500cffffff,
                      ),
                    ),
                    GestureDetector(
                      onTap: provider.selectAlias,
                      child: Text(
                        'Alias',
                        style: TextFontStyle.headline12w500cffffff,
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
        );
      },
    );
  }
}
