import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/constants/colors.dart';

import '../../constants/sizes.dart';

class ETextFormFieldTheme{
  ETextFormFieldTheme._();


  /// Customizable light text form field
  static InputDecorationTheme lightTextFormField =  InputDecorationTheme(
    errorMaxLines: 3,
    fillColor: EColors.greyColor.withOpacity(0.5),
    suffixIconColor: EColors.darkGreyColor,
    prefixIconColor: EColors.darkGreyColor,
     // constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: ESizes.fontSizeSm,color: EColors.darkGreyColor),
    hintStyle: const TextStyle().copyWith(fontSize: ESizes.fontSizeSm,color: EColors.blackColor),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: EColors.blackColor.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.textFormFieldRadius),
      borderSide: const BorderSide(color: EColors.greyColor,width: 1),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.textFormFieldRadius),
      borderSide: const BorderSide(color: EColors.greyColor,width: 1),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: EColors.blackColor,width: 1),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.textFormFieldRadius),
      borderSide: const BorderSide(color: EColors.warningColor,width: 1),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(ESizes.textFormFieldRadius),
      borderSide: const BorderSide(color: EColors.warningColor,width: 2),
    )
  );


/// Customizable dark text form field
  static InputDecorationTheme darkTextFormField =  InputDecorationTheme(
      errorMaxLines: 3,
      suffixIconColor: EColors.darkGreyColor,
      prefixIconColor: EColors.darkGreyColor,
      // constraints: const BoxConstraints.expand(height: 14.inputFieldHeight),
      labelStyle: const TextStyle().copyWith(fontSize: ESizes.fontSizeSm,color: EColors.darkGreyColor),
      hintStyle: const TextStyle().copyWith(fontSize: ESizes.fontSizeSm,color: EColors.darkGreyColor),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle().copyWith(color: EColors.whiteColor.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(ESizes.textFormFieldRadius),
        borderSide: const BorderSide(color: EColors.darkGreyColor,width: 1),
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(ESizes.textFormFieldRadius),
        borderSide: const BorderSide(color: EColors.darkGreyColor,width: 1),
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(ESizes.textFormFieldRadius),
        borderSide: const BorderSide(color: EColors.whiteColor,width: 1),
      ),
      errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(ESizes.textFormFieldRadius),
        borderSide: const BorderSide(color: EColors.errorColor,width: 1),
      ),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(ESizes.textFormFieldRadius),
        borderSide: const BorderSide(color: EColors.warningColor,width: 2),
      )
  );


}