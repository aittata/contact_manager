import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color mainColor = Color(0xFF00AAFF);
  static const Color backgroundColor = Color(0xFFDEDEDE);
  static const Color backgroundImageColor = Color(0xFFFFFFFF);
  static const Color primaryBackColor = Color(0xFFFFFFFF);
  static const Color secondaryBackColor = Color(0xFF000000);
  static const Color transparentColor = Color(0x00000000);
  static const Color shadowColor = Color(0x1F000000);

  /// TODO : Icons
  static const Color primaryIconColor = Color(0xFF000000);
  static const Color secondaryIconColor = Color(0xFFFFFFFF);

  /// TODO : Texts
  static const Color primaryTextColor = Color(0xFF000000);
  static const Color secondaryTextColor = Color(0xFFFFFFFF);

  static ThemeData get themeData {
    return ThemeData(
      scaffoldBackgroundColor: AppTheme.backgroundColor,
      primaryColor: AppTheme.backgroundColor,
      splashColor: AppTheme.backgroundColor,
      appBarTheme: AppBarTheme(
        elevation: 1,
        centerTitle: true,
        backgroundColor: AppTheme.primaryBackColor,
        titleTextStyle: TextStyle(
          color: AppTheme.primaryTextColor,
          fontWeight: FontWeight.w900,
          fontSize: 20,
        ),
      ),
    );
  }
}
