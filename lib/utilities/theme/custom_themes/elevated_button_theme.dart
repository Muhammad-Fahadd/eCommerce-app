import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class EElevatedButtonTheme {
  EElevatedButtonTheme._();


  ///Customizable light elevated button theme
  static ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.lightContainerColor,
      backgroundColor: EColors.primaryColor,
      disabledForegroundColor: EColors.darkGreyColor,
      disabledBackgroundColor: EColors.disabledButtonColor,
      side:  BorderSide.none,
      padding: const EdgeInsets.symmetric(vertical: ESizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: EColors.whiteTextColor, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ESizes.buttonRadius)),
    ),
  );


///Customizable dark elevated button theme
  static ElevatedButtonThemeData darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.lightContainerColor,
      backgroundColor: EColors.primaryColor,
      disabledForegroundColor: EColors.darkGreyColor,
      disabledBackgroundColor: EColors.disabledButtonColor,
      side:  BorderSide.none,
      padding: const EdgeInsets.symmetric(vertical: ESizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: EColors.whiteTextColor, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ESizes.buttonRadius)),
    ),
  );
}