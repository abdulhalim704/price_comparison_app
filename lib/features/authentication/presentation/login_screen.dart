import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:price_comparison/helpers/navigation_service.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/all_routes.dart';
import '../../../helpers/ui_helpers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              Assets.images.login.path,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 533.h,
            left: 145.w,
            child: Image.asset(
              Assets.icons.logo.path,
              height: 32.h,
              width: 102.w,
            ),
          ),
          Positioned(
            top: 580.h,
            left: 0.w,
            right: 0.w,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 74.w),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. Tellus mauris faucibus tempor venenatis.',
                style: TextFontStyle.headline14w400c919191
                    .copyWith(color: AppColors.c878787),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 750.h, left: 16.w, right: 16.w),
            child: GestureDetector(
              onTap: () {
                NavigationService.navigateToReplacement(
                    Routes.navigationScreen);
              },
              child: Container(
                height: 49.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.c5865F2,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign In With Discord',
                      style: TextFontStyle.headline15w600cfffff,
                    ),
                    UIHelper.horizontalSpace(12.w),
                    Image.asset(
                      Assets.icons.discordLogo.path,
                      width: 26.w,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
