import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../providers/stock_alice_provider.dart';

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
