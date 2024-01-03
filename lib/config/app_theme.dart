import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onsi/config/app_colors.dart';
import 'package:onsi/utils.dart';

class AppTheme {
  static const padding = 16.0;
  static const buttonBorderRadius = 5.0;

  static ThemeData onsiTheme() {
    ThemeData baseTheme = ThemeData(
      primarySwatch: Utils.getMaterialColor(AppColors.greenLight),
    );

    return baseTheme.copyWith(
        textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme));
  }
}