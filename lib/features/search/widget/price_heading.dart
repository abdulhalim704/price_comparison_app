import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/colors.gen.dart';

class PriceHeading extends StatelessWidget {
  const PriceHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r), color: AppColors.c1C1C1C),
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
