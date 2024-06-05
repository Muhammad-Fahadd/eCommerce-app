
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ETextTheme {
  ETextTheme._();

  /// Customizable light text theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32,fontWeight: FontWeight.bold , color: EColors.blackColor),
    headlineMedium: const TextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w600 , color: EColors.blackColor),
    headlineSmall: const TextStyle().copyWith(fontSize: 18,fontWeight: FontWeight.w600,color: EColors.blackColor),

    titleLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600 , color: EColors.blackColor),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w500,color: EColors.blackColor),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: EColors.blackColor),

    bodyLarge: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500 ,color: EColors.blackColor),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color: EColors.blackColor),
    bodySmall: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: EColors.blackColor.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight:FontWeight.normal ,color: EColors.blackColor),
    labelMedium: const TextStyle().copyWith(fontSize: 12 , fontWeight: FontWeight.normal ,color: EColors.blackColor.withOpacity(0.5)),
    labelSmall: const TextStyle().copyWith(fontSize: 10 , fontWeight: FontWeight.normal ,color: EColors.blackColor.withOpacity(0.5)),

  );



  /// Customizable dark text theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32,fontWeight: FontWeight.bold , color: EColors.whiteColor),
    headlineMedium: const TextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w600 , color: EColors.whiteColor),
    headlineSmall: const TextStyle().copyWith(fontSize: 18,fontWeight: FontWeight.w600,color: EColors.whiteColor),

    titleLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600 , color: EColors.whiteColor),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w500,color: EColors.whiteColor),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: EColors.whiteColor),

    bodyLarge: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500 ,color: EColors.whiteColor),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color: EColors.whiteColor),
    bodySmall: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: EColors.whiteColor.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight:FontWeight.normal ,color: EColors.whiteColor),
    labelMedium: const TextStyle().copyWith(fontSize: 12 , fontWeight: FontWeight.normal ,color: EColors.whiteColor.withOpacity(0.5)),
    labelSmall: const TextStyle().copyWith(fontSize: 10 , fontWeight: FontWeight.normal ,color: EColors.whiteColor.withOpacity(0.4)),

  );
}