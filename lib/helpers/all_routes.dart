import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:price_comparison/features/lebel/presentation/lebel_screen.dart';
import 'package:price_comparison/features/search/presentation/search_screen.dart';
import 'package:price_comparison/features/setting/presentation/setting_screen.dart';
import '../features/home/presentation/home_screen.dart';



final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;

  static const String home = '/home';
  static const String search = '/search';
  static const String setting = '/setting';
  static const String lebel = '/lebel';
  
}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: HomeScreen()),
                settings: settings)
            : CupertinoPageRoute(builder: (context) => const HomeScreen());
            case Routes.search:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: SearchScreen()),
                settings: settings)
            : CupertinoPageRoute(builder: (context) => const SearchScreen());
            case Routes.lebel:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: LebelScreen()),
                settings: settings)
            : CupertinoPageRoute(builder: (context) => const LebelScreen());
            case Routes.setting:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const ScreenTitle(widget: SettingScreen()),
                settings: settings)
            : CupertinoPageRoute(builder: (context) => const SettingScreen());
      
      // case Routes.webview:
      //   final args = settings.arguments as Map;
      //   return Platform.isAndroid
      //       ? _FadedTransitionRoute(
      //           widget: WebviewHelper(
      //             name: args["name"],
      //             url: args["url"],
      //           ),
      //           settings: settings)
      //       : CupertinoPageRoute(
      //           builder: (context) => WebviewHelper(
      //                 name: args["name"],
      //                 url: args["url"],
      //               ));

      default:
        return null;
    }
  }
}

//  weenAnimationBuilder(
//   child: Widget,
//   tween: Tween<double>(begin: 0, end: 1),
//   duration: Duration(milliseconds: 1000),
//   curve: Curves.bounceIn,
//   builder: (BuildContext context, double _val, Widget child) {
//     return Opacity(
//       opacity: _val,
//       child: Padding(
//         padding: EdgeInsets.only(top: _val * 50),
//         child: child
//       ),
//     );
//   },
// );

class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return FadeTransition(
              opacity: CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: widget,
    );
  }
}
