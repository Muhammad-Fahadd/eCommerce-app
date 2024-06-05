import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/constants/colors.dart';

import '../../constants/sizes.dart';

class EOutlinedButtonTheme{
  EOutlinedButtonTheme._();

  ///Customizable light outlined button
  static OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.blackColor,
      side: const BorderSide(color: EColors.primaryColor),
      textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: ESizes.buttonHeight,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ESizes.buttonRadius)),
    )
  );


///Customizable dark outlined button
  static OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: EColors.whiteColor,
        side: const BorderSide(color: EColors.whiteColor),
        textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: EColors.whiteColor),
        padding: const EdgeInsets.symmetric(vertical: ESizes.buttonHeight,horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ESizes.buttonRadius)),
      )
  );
}