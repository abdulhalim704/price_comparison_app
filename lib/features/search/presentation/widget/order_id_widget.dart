import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/toast.dart';
import '../../../../helpers/ui_helpers.dart';

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
