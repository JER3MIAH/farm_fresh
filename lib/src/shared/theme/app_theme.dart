import 'package:farm_fresh/src/shared/shared.dart';
import 'package:flutter/material.dart';

// base theme
final baseTheme = ThemeData.light();

const outlineInputBorderBase =
    UnderlineInputBorder(borderSide: BorderSide.none);

// app theme
final ThemeData appTheme = baseTheme.copyWith(
  scaffoldBackgroundColor: appColors.scaffoldColor,
  primaryColor: appColors.blue,
  progressIndicatorTheme: ProgressIndicatorThemeData(
    linearTrackColor: appColors.blue.withOpacity(.1),
    circularTrackColor: appColors.blue.withOpacity(.1),
    color: appColors.blue,
  ),
  dividerColor: appColors.blue.withOpacity(.5),
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
        fontFamily: '', //TODO: apply a font family here
        bodyColor: appColors.black,
      ),
  colorScheme: baseTheme.colorScheme
      .copyWith(
        onPrimary: appColors.blue.withOpacity(0.6),
        primary: appColors.blue,
        primaryContainer: const Color(0xff00649A),
        onPrimaryContainer: const Color(0xFF00507C),
        secondary: appColors.grey.withOpacity(0.4),
        onSecondary: appColors.grey300,
        error: appColors.error,
        onError: appColors.error.withOpacity(0.42),
        background: appColors.white,
      )
      .copyWith(background: appColors.scaffoldColor),
);

var appColors = AppColors();

class AppColors {
  Color blue = const Color(0xFF0000FF);
  Color grey = const Color(0xff141414);
  Color barrierColor = const Color(0X8010031C);
  Color backGroundColor = const Color(0xffE5E5E5);
  Color inputFieldBorderColor = const Color(0xFF898989);
  Color lightPurple = const Color(0xFFF5EDFD);
  Color inputFieldTextColor = const Color(0xFF898989);
  Color orange = const Color(0xFFFF9900);
  Color greyDark = const Color(0xFF3D3E3F);
  Color black = const Color(0xFF1B2124);
  Color white = const Color(0xFFFFFFFF);
  Color scaffoldColor = const Color(0xFFFCFCFC);
  Color greyText = const Color(0xFF414649);
  Color greySearch = const Color(0xFFF3F3F3);
  Color greySearchText = const Color(0xFF616564);
  Color grey700 = const Color(0xFF475467);
  Color grey600 = const Color(0xFF666A64);
  Color grey500 = const Color(0xFF868686);
  Color grey400 = const Color(0xFF8D9091);
  Color grey300 = const Color(0xFFF6F6F6);
  Color gery200 = const Color(0xFFEFEFEF);
  Color grey100 = const Color(0xFFFBFBFB);
  Color error = const Color(0xFFC5292A);
  Color success = const Color(0xFF22B02E);
  Color errorDarkColor = const Color(0xFF7F1A1B);
  Color orangeDarkerColor = const Color(0xFF804D00);
  Color orangeDarkColor = const Color(0xFFC27500);
  Color purple2 = const Color(0xFF610CAF);
  Color purple3 = const Color(0xFFD4B0F5);
  Color grey1 = const Color(0xFFE6E6E6);
  Color grey2 = const Color(0xFFB8BEC5);
  Color purpleDark = const Color(0xFF51136C);
  Color orangeDark2Color = const Color.fromARGB(255, 82, 59, 35);
  Color lightOrange = const Color(0xFFFFF5E5);
  Color lightGreen = const Color(0xFFDFFFDE);
  Color green = const Color(0xFF00FFFF);
  Color darkGreen = const Color(0xFF079B06);
  Color purple4 = const Color(0xFFE6D2F9);
  Color purple5 = const Color(0xFFF7F1FD);
  Color red1 = const Color(0xFFEA6666);
  Color lightBlue = const Color(0xFF1376E2);
  Color blue1 = const Color(0xFFEAF4FF);
  Color blue2 = const Color(0xFFACD4FF);
  Color orange1 = const Color(0xFFFFEDDA);
  Color orange2 = const Color(0xFFE9CEAF);
  Color orange3 = const Color(0xFFFFDDAA);
  Color orange4 = const Color(0xFFFFF5E6);
  Color orange7 = const Color(0xFFE27F13);
  Color orange8 = const Color(0xFFCC6A00);
  Color purple6 = const Color(0xFF8514EB);
  Color purple7 = const Color(0xFFBF04A1);
  Color grey3 = const Color(0xFFECECEC);
  Color grey80 = const Color(0xFF808080);
}
