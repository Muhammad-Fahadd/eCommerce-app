import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class EBottomSheetTheme{
  EBottomSheetTheme._();


  ///Customizable light bottom sheet theme
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: EColors.whiteColor,
    modalBackgroundColor: EColors.whiteColor,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );


  ///Customizable dark bottom sheet theme
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: EColors.blackColor,
    modalBackgroundColor: EColors.blackColor,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}