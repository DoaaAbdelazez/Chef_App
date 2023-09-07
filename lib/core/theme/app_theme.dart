import 'package:chef_app/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_colors.dart';

ThemeData getAppTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    //scaffoldBackgroundColor
    scaffoldBackgroundColor: AppColors.white,
    //AppBar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
    ),
    //text them
    textTheme: TextTheme(
      displayLarge: boldStyle(),
      displayMedium: regularStyle(),
    ),

    //button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    //text field
    inputDecorationTheme: InputDecorationTheme(
      //enabled border
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      //fouced border
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      //error border
      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      //hintn
      hintStyle: boldStyle(color: AppColors.grey, fonSize: 16),
      //fill color
      // fillColor: AppColors.lightBlack, filled: true,
    ),
  );
}
