import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class EAppBarTheme {
  EAppBarTheme._();

  ///Customizable light appbar theme
   static AppBarTheme lightAppBarTheme =  const AppBarTheme(
       elevation: 0,
       centerTitle: false,
       scrolledUnderElevation: 0,
       backgroundColor: Colors.transparent,
       surfaceTintColor: Colors.transparent,
       iconTheme: IconThemeData(size: ESizes.iconMd ,color: EColors.blackColor),
       actionsIconTheme: IconThemeData(size: ESizes.iconMd,color: EColors.blackColor),
       titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: EColors.blackColor)
   );


  ///Customizable dark appbar theme
  static AppBarTheme darkAppBarTheme =  const AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(size: ESizes.iconMd ,color: EColors.whiteColor),
      actionsIconTheme: IconThemeData(size: ESizes.iconMd,color: EColors.whiteColor),
      titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: EColors.whiteColor)
  );
}