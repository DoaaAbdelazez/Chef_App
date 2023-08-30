import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _textStyle({
  required Color color,
  required double fonSize,
  required FontWeight fontWeight,
}) {
  return GoogleFonts.lato(
    color: color,
    fontSize: fonSize.sp,
    fontWeight: fontWeight,
  );
}
//bold style
TextStyle boldStyle({
  Color color = AppColors.white,
  double fonSize = 24,
}) =>
    _textStyle(
      color: color,
      fonSize: fonSize,
      fontWeight: FontWeight.bold,
    );

    //regular style
TextStyle regularStyle({
  Color color = AppColors.white,
  double fonSize = 24,
}) =>
    _textStyle(
      color: color,
      fonSize: fonSize,
      fontWeight: FontWeight.normal,
    );
