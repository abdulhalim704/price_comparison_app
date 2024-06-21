import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_widgets/action_button.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';
import 'widget/user_info_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Setting'),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserInfoCardWidget(
              nameFirstWord: 'B',
              userName: 'Boss-1',
              email: 'boss-1@gmail.com',
              id: '1043232',
              authorized: 'Authenticated',
            ),
            UIHelper.verticalSpace(15.h),
            ActionButton(
              buttonName: 'Log Out',
              color: AppColors.c9182E6,
              height: 50.h,
              iconName: Assets.icons.logoutIcon.path,
              iconWidth: 24.w,
            ),
          ],
        ),
      ),
    );
  }
}
