import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';

class SwitchButtonWidget extends StatelessWidget {
  final String? buttonName;
  final bool? value;
  final Color? activeColor;
  final Color? inActiveColor;
  final ValueChanged<bool>? onChanged;

  const SwitchButtonWidget({
    this.buttonName,
    this.value = false,
    this.activeColor = AppColors.c49C26A,
    this.inActiveColor = AppColors.c606162,
    this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
        decoration: BoxDecoration(
          color: AppColors.c343535,
          border: Border.all(color: AppColors.c484949),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              buttonName ?? '',
              style: TextFontStyle.headline14w500cfffff,
            ),
            Transform.scale(
              scale: 0.70,
              child: CupertinoSwitch(
                value: value!,
                onChanged: onChanged,
                activeColor: activeColor,
                trackColor: inActiveColor, // Specify the inactive color here
              ),
            ),
          ],
        ),
      ),
    );
  }
}

