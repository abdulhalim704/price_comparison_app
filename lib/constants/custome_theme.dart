import 'package:flutter/material.dart';
import '../gen/colors.gen.dart';

final class CustomTheme {
  CustomTheme._();
  static const MaterialColor kToDark = MaterialColor(
    0xFF0E0E0E, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFF0E0E0E), //10%
      100: Color(0xFF0E0E0E), //20%
      200: Color(0xFF0E0E0E), //30%
      300: Color(0xFF0E0E0E), //40%
      400: Color(0xFF0E0E0E), //50%
      500: Color(0xFF0E0E0E), //60%
      600: Color(0xFF0E0E0E), //70%
      700: Color(0xFF0E0E0E), //80%
      800: Color(0xFF0E0E0E), //80%
      900: Color(0xFF0E0E0E), //80%
    },
  );
  static ThemeData get mainTheme {
    return ThemeData(
      primaryColor: AppColors.themeColor,
      primarySwatch: CustomTheme.kToDark,
      scaffoldBackgroundColor: AppColors.scaffoldColor,
    );
  }
}
