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
    return Consumer<DayWaysProvider>(
      builder: (context, setProvider, child) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
          // height: 40.h,
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
                  left: setProvider.index == 2
                      ? 2 * width / 3
                      : setProvider.index == 1
                          ? width / 3
                          : 0,
                  duration: const Duration(milliseconds: 200),
                  width: width / 3,
                  child: Container(
                    height: 30.h,
                    width: width / 5,
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
                      onTap: () => setProvider.setSelection(0),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 8.h),
                        child: Text(
                          '1 Day',
                          style: TextFontStyle.headline12w500cffffff,
                        ),
                      ),
                    ),

                    GestureDetector(
                      onTap: () => setProvider.setSelection(1),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 8.h),
                        child: Text(
                          '30Day',
                          style: TextFontStyle.headline12w500cffffff,
                        ),
                      ),
                    ),
                    
                    GestureDetector(
                      onTap: () => setProvider.setSelection(2),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 8.h),
                        child: Text(
                          'Total',
                          style: TextFontStyle.headline12w500cffffff,
                        ),
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
