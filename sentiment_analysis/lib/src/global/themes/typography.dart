// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sentiment_analysis/src/global/themes/colors.dart';

class AppTypography {
  static TextStyle fontStyleEpilogue16() {
    return GoogleFonts.epilogue(
      color: AppColors.neutralColorWhite,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle fontStyleEpilogue24(Color color) {
    return GoogleFonts.epilogue(
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle fontStyleEpilogue32() {
    return GoogleFonts.epilogue(
      color: AppColors.neutralColorBlack,
      fontSize: 32,
      fontWeight: FontWeight.w600,
    );
  }
  
  static TextStyle fontStyleRoboto16() {
    return GoogleFonts.roboto(
      color: AppColors.neutralColorWhite,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle fontStyleRoboto20() {
    return GoogleFonts.roboto(
      color: AppColors.neutralColorWhite,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle fontStyleRoboto24() {
    return GoogleFonts.roboto(
      color: AppColors.neutralColorBlack,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    );
  }

}