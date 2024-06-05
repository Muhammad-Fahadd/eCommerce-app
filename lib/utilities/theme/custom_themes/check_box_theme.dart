import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class ECheckBoxTheme{
  ECheckBoxTheme._();


  ///Customizable light check box theme
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ESizes.xs)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return EColors.whiteColor;
      }else{
        return EColors.blackColor;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return EColors.primaryColor;
      }else{
        return Colors.transparent;
      }
    })
  );


///Customizable dark check box theme/
  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(ESizes.xs)),
      checkColor: WidgetStateProperty.resolveWith((states) {
        if(states.contains(WidgetState.selected)){
          return EColors.whiteColor;
        }else{
          return EColors.blackColor;
        }
      }),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if(states.contains(WidgetState.selected)){
          return EColors.primaryColor;
        }else{
          return Colors.transparent;
        }
      })
  );
}