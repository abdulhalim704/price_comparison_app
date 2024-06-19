// ignore_for_file: unused_field, deprecated_member_use

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:price_comparison/features/lebel/presentation/lebel_screen.dart';
import 'package:price_comparison/features/setting/presentation/setting_screen.dart';

import '/constants/text_font_style.dart';
import '/gen/assets.gen.dart';
import 'features/home/presentation/home_screen.dart';
import 'features/search/presentation/search_screen.dart';
import 'gen/colors.gen.dart';
import 'helpers/helper_methods.dart';

final class NavigationScreen extends StatefulWidget {
  final Widget? pageNum;
  const NavigationScreen({
    super.key,
    this.pageNum,
  });

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  // final appData = GetStorage();
  //Variable for navigation Index
  int _currentIndex = 0;
  //Variable for navigation Color Index
  int _colorIndex = 0;

  final bool _isFisrtBuild = true;
  bool _navigationOn = true;
  //final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  final List<StatefulWidget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const LebelScreen(),
    const SettingScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Object? args;
    StatefulWidget? screenPage;
    if (_isFisrtBuild) {
      args = ModalRoute.of(context)!.settings.arguments;
    }
    if (args != null) {
      _colorIndex = 5;
      screenPage = args as StatefulWidget;
      var newColorindex = -1;

      for (var element in _screens) {
        newColorindex++;
        if (element.toString() == screenPage.toString()) {
          _colorIndex = newColorindex;
          _currentIndex = newColorindex;
          break;
        }
      }
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        showMaterialDialog(context);
      },
      child: Scaffold(
        backgroundColor: AppColors.secondaryColor,
        extendBody: true,
        onDrawerChanged: (isOpened) => setState(() {
          _navigationOn = !isOpened;
        }),
        body: Center(
            child: (screenPage != null)
                ? screenPage
                : _screens.elementAt(_currentIndex)),
        bottomNavigationBar: SizedBox(
          height: 65.h,
          child: CustomNavigationBar(
            iconSize: 30.r,
            selectedColor: Colors.red,
            strokeColor: AppColors.themeColor,
            unSelectedColor: Colors.black,
            backgroundColor: AppColors.secondaryColor,
            items: [
              CustomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 2.w),
                  child: Image.asset(
                    Assets.icons.home.path,
                    color: (_currentIndex == 0)
                        ? AppColors.c9182E6
                        : AppColors.cFFFFFF,
                  ),
                ),
                title: Text("Home",
                    style: TextFontStyle.headline12StyleMontserrat.copyWith(
                      color: (_currentIndex == 0)
                          ? AppColors.cFFFFFF
                          : AppColors.cFFFFFF,
                    )),
              ),
              CustomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 2.w),
                  child: Image.asset(
                    Assets.icons.search.path,
                    color: (_currentIndex == 1)
                        ? AppColors.c9182E6
                        : AppColors.cFFFFFF,
                  ),
                ),
                title: Text(
                  "Search",
                  style: TextFontStyle.headline12StyleMontserrat.copyWith(
                    color: (_currentIndex == 1)
                        ? AppColors.cFFFFFF
                        : AppColors.cFFFFFF,
                  ),
                ),
              ),
              CustomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 2.w),
                  child: Image.asset(
                    Assets.icons.label.path,
                    color: (_currentIndex == 2)
                        ? AppColors.c9182E6
                        : AppColors.cFFFFFF,
                  ),
                ),
                title: Text(
                  "Lebel",
                  style: TextFontStyle.headline12StyleMontserrat.copyWith(
                    color: (_currentIndex == 2)
                        ? AppColors.cFFFFFF
                        : AppColors.cFFFFFF,
                  ),
                ),
              ),
              CustomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(bottom: 2.0.w),
                  child: Image.asset(
                    Assets.icons.setting.path,
                    color: (_currentIndex == 3)
                        ? AppColors.c9182E6
                        : AppColors.cFFFFFF,
                  ),
                ),
                title: Text(
                  "Setting",
                  style: TextFontStyle.headline12StyleMontserrat.copyWith(
                    color: (_currentIndex == 3)
                        ? AppColors.cFFFFFF
                        : AppColors.cFFFFFF,
                  ),
                ),
              ),
            ],
            currentIndex: _currentIndex,
            onTap: (index) {
              // if (appData.read(kKeyIsLoggedIn) || index == 1 || index == 0) {
              //   if (index == 1) {
              //     // context.read<SelectedSubCat>().selectedSubCatIDClear();
              //   }

              setState(() {
                _currentIndex = index;
              });
              // } else {
              //   ToastUtil.showLongToast("You need to log in first");
              // }
            },
          ),
        ),
      ),
    );
  }
}
