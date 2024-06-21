import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:price_comparison/constants/text_font_style.dart';

import '../../../common_widgets/app_bar_action_button.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/all_routes.dart';
import '../../../helpers/navigation_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Price Comparison',
          style: TextFontStyle.headline20w400cfffff,
        ),
        actions: [
          AppBarActionButton(
            onTap: () {
              NavigationService.navigateTo(Routes.notification);
            },
            containerColor: AppColors.c626262,
            child: Image.asset(
              Assets.icons.notification.path,
              height: 30.h,
            ),
          ),
          AppBarActionButton(
            containerColor: AppColors.cFFFFFF,
            child: Text(
              'B',
              style: TextFontStyle.headline20w700c000000,
            ),
          )
        ],
      ),
    );
  }
}
