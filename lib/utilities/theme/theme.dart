import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/theme/custom_themes/appbar_theme.dart';
import 'package:shoe_app/utilities/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:shoe_app/utilities/theme/custom_themes/check_box_theme.dart';
import 'package:shoe_app/utilities/theme/custom_themes/chip_theme.dart';
import 'package:shoe_app/utilities/theme/custom_themes/elevated_button_theme.dart';
import 'package:shoe_app/utilities/theme/custom_themes/outlined_button_theme.dart';
import 'package:shoe_app/utilities/theme/custom_themes/text_field_theme.dart';
import 'package:shoe_app/utilities/theme/custom_themes/text_theme.dart';

import '../constants/colors.dart';



class EAppTheme {

  EAppTheme._();


  ///Customizable light mode theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    primaryColor: Colors.blue,
    fontFamily: 'Poppins',
    textTheme: ETextTheme.lightTextTheme,
    appBarTheme: EAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: EBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: EElevatedButtonTheme.lightElevatedButtonTheme,
    checkboxTheme: ECheckBoxTheme.lightCheckBoxTheme,
    chipTheme: EChipTheme.lightChipTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ETextFormFieldTheme.lightTextFormField,
    scaffoldBackgroundColor: Colors.white,
  );



  ///Customizable dark mode theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    primaryColor: Colors.blue,
    fontFamily: 'Poppins',
    textTheme: ETextTheme.darkTextTheme,
    appBarTheme: EAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: EBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: EElevatedButtonTheme.darkElevatedButtonTheme,
    checkboxTheme: ECheckBoxTheme.darkCheckBoxTheme,
    chipTheme: EChipTheme.darkChipTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ETextFormFieldTheme.darkTextFormField,
    scaffoldBackgroundColor: EColors.blackColor,
  );
}