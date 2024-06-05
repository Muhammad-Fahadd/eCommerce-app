import 'package:flutter/material.dart';

class EColors{
  EColors._();

  ///Gaming App color
  static const Color onBoardingScreenColor1 = Colors.black87;
  static const Color onBoardingScreenColor2 = Colors.brown;
  static const Color onBoardingScreenColor3 = Colors.black87;

  static const Color redColor = Colors.red;


  ///App basic Colors
  static const Color primaryColor = Color(0xffB026FF);
  static const Color secondaryColor = Color(0xffFFD700);
  static const Color accentColor = Color(0xffb0c7ff);

  ///Gradient Colors
  static const Gradient gradientColor = LinearGradient(
      colors: [
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4),
  ]);

  ///Text Colors
  static const Color primaryTextColor = Color(0xff333333);
  static const Color secondaryTextColor = Color(0xff6c757d);
  static const Color whiteTextColor = Colors.white;

  ///Background Colors
  static const Color lightBackGroundColor = Color(0xff4b68ff);
  static const Color darkBackGroundColor = Color(0xffffe24b);
  static const Color primaryBackGroundColor = Color(0xffb0c7ff);

  ///Background Container Colors
  static const Color lightContainerColor = Color(0xfff6f6f6);
  static Color darkContainerColor = Colors.white.withOpacity(0.1);

  ///Button Colors
  static const Color primaryButtonColor = Color(0xff4b68ff);
  static const Color secondaryButtonColor = Color(0xffffe24b);
  static const Color disabledButtonColor = Color(0xffb0c7ff);

  ///Border Colors
  static const Color primaryBorderColor = Color(0xffd9d9d9);
  static const Color secondaryBorderColor = Color(0xffe6e6e6);

  ///Error and validation Colors
  static const Color errorColor = Color(0xffd32f2f);
  static const Color successColor = Color(0xff388e3c);
  static const Color warningColor = Color(0xfff57c00);
  static const Color infoColor = Color(0xff1976d2);

  ///Neutral shades
  static const Color blackColor = Color(0xff272727);
  static const Color darkerGreyColor = Color(0xff4f4f4f);
  static const Color darkGreyColor = Color(0xff939393);
  static const Color greyColor = Color(0xffe0e0e0);
  static const Color softGreyColor = Color(0xfff4f4f4);
  static const Color lightGreyColor = Color(0xfff9f9f9);
  static const Color whiteColor = Color(0xffffffff);
}