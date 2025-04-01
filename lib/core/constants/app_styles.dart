import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jewellery_source_code/core/constants/app_colors.dart';


/// TEXT THEME
final kAppTextTheme = TextTheme(
  headlineLarge: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 26.0.h,
    fontWeight: FontWeight.w600,
    height: 1.2,
  ),
  headlineMedium: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 24.0.h,
    fontWeight: FontWeight.w500,
    height: 1.2,
  ),
  headlineSmall: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 22.0.h,
    fontWeight: FontWeight.w500,
    height: 1.2,
  ),
  titleLarge: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 20.0.h,
    fontWeight: FontWeight.w500,
    height: 1.2,
  ),
  titleMedium: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 18.0.h,
    fontWeight: FontWeight.w500,
    height: 1.2,
  ),
  titleSmall: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 16.0.h,
    fontWeight: FontWeight.w500,
    height: 1.2,
  ),
  bodyLarge: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 14.0.h,
    fontWeight: FontWeight.w500,
    height: 1.2,
  ),
  bodyMedium: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 12.0.h,
    fontWeight: FontWeight.w500,
    height: 1.2,
  ),
  bodySmall: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 10.0.h,
    fontWeight: FontWeight.w500,
    height: 1.2,
  ),
  labelLarge: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 14.0.h,
    fontWeight: FontWeight.w400,
    height: 1.2,
  ),
);


/// TOOLTIP THEME
final kAppTooltipTheme = TooltipThemeData(
  textStyle: kAppTextTheme.bodyMedium?.copyWith(
    color: Colors.white,
  ),
);

/// APPBAR THEME
final kAppBarTheme = AppBarTheme(
  backgroundColor: kWhite,
  systemOverlayStyle: const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ),
  titleTextStyle: TextStyle(
    fontFamily: 'Poppins',
    color: kLightPrimaryText,
    fontSize: 18.0.h,
    fontWeight: FontWeight.w500,
    height: 1.2,
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  elevation: 0,
  shadowColor: kAppBarShadowColor,
);