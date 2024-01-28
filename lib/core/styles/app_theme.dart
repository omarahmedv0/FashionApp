import 'package:ecommerce_app/core/manager/constants_manager.dart';
import 'package:ecommerce_app/core/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData appTheme() {
    return ThemeData(
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColors.primary),
          textStyle: MaterialStatePropertyAll(TextStyle(
            fontSize: 23,
            color: AppColors.white,
          )),
        ),
      ),
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      scaffoldBackgroundColor: AppColors.white,
      fontFamily: ConstantsManager.fontFamily,
      primaryColor: AppColors.primary,
      primaryColorLight: AppColors.primaryLight,
      textTheme: TextTheme(
        titleLarge: const TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w800,
        ),
        bodySmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.black.withOpacity(.3),
        ),
      ),
    );
  }
}
