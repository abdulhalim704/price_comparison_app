import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:price_comparison/gen/assets.gen.dart';

import '../../../common_widgets/action_button.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/navigation_service.dart';
import '../../../helpers/ui_helpers.dart';
import 'widget/notification_data_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c2E2F2F,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.c2E2F2F,
        automaticallyImplyLeading: false,
        title: Text(
          'Notifications',
          style: TextFontStyle.headline18w600cfffff,
        ),
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
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.only(bottom: 24.h),
                separatorBuilder: (context, index) {
                  return UIHelper.verticalSpace(10.h);
                },
                itemCount: 15,
                itemBuilder: (context, index) {
                  return NotificationWidget(
                    notificationTitle: 'Detected a new Alias Sale',
                    hours: '3 hours ago',
                    icon: Assets.icons.infoBulk.path,
                  );
                },
              ),
            ),
            ActionButton(
              buttonName: 'Clear All',
              height: 50.h,
              color: AppColors.c494A4A,
            ),
          ],
        ),
      ),
    );
  }
}
