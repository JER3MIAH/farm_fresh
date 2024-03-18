import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

// base theme
final baseTheme = ThemeData.light();

const outlineInputBorderBase =
    UnderlineInputBorder(borderSide: BorderSide.none);

// app theme
final ThemeData appTheme = baseTheme.copyWith(
  scaffoldBackgroundColor: appColors.scaffoldColor,
  primaryColor: appColors.green,
  progressIndicatorTheme: ProgressIndicatorThemeData(
    linearTrackColor: appColors.green.withOpacity(.1),
    circularTrackColor: appColors.green.withOpacity(.1),
    color: appColors.green,
  ),
  dividerColor: appColors.green.withOpacity(.5),
  brightness: Brightness.light,
  inputDecorationTheme: baseTheme.inputDecorationTheme.copyWith(
    contentPadding: EdgeInsets.zero,
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    border: outlineInputBorderBase,
    focusedBorder: outlineInputBorderBase,
    enabledBorder: outlineInputBorderBase,
    errorStyle:
        TextStyle(height: 0, fontWeight: FontWeight.normal, fontSize: 15.sp),
    labelStyle: TextStyle(
        color: appColors.inputFieldTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w400),
    hintStyle: TextStyle(
        color: appColors.inputFieldTextColor,
        fontSize: 16.sp,
        fontWeight: FontWeight.w400),
  ),
  textTheme: baseTheme.textTheme
      .copyWith(
        headlineMedium: TextStyle(
          fontSize: 25.sp,
          fontWeight: FontWeight.w700,
        ),
      )
      .apply(
        fontFamily: kNunito,
        bodyColor: appColors.black,
      ),
  colorScheme: baseTheme.colorScheme
      .copyWith(
        onPrimary: appColors.green.withOpacity(0.6),
        primary: appColors.green,
        secondary: appColors.grey,
        error: appColors.error,
        onError: appColors.error.withOpacity(0.42),
        background: appColors.white,
      )
      .copyWith(background: appColors.scaffoldColor),
);

var appColors = AppColors();

class AppColors {
  Color green = const Color(0xFF004F2D);
  Color orange = const Color(0xFFE97000);
  Color grey = const Color(0xff343434);
  Color barrierColor = const Color(0X8010031C);
  Color backGroundColor = const Color(0xffE5E5E5);
  Color inputFieldBorderColor = const Color(0xFF898989);
  Color inputFieldTextColor = const Color(0xFF898989);
  Color black = const Color(0xFF1B2124);
  Color white = const Color(0xFFFFFFFF);
  Color scaffoldColor = const Color(0xFFFCFCFC);
  Color error = const Color(0xFFC11717);
  Color success = const Color(0xFF09A160);
  Color grey80 = const Color(0xFF808080);
}
