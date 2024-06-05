import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class EChipTheme{
  EChipTheme._();

  ///Customizable light chip theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: EColors.greyColor.withOpacity(0.4),
    labelStyle: const TextStyle(color: EColors.blackColor),
    selectedColor: EColors.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: EColors.whiteColor,
  );


///Customizable dark chip theme
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: EColors.darkerGreyColor.withOpacity(0.4),
    labelStyle: const TextStyle(color: EColors.whiteColor),
    selectedColor: EColors.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: EColors.whiteColor,
  );
}