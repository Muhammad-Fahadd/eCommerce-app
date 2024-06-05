import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/utilities/constants/colors.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

class ELoaders{

  static hideSnackBar() => ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();


  static customToast(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
          elevation: 0,
          duration: const Duration(seconds: 3),
          backgroundColor: Colors.transparent,
          content: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: EHelperFunctions.isDarkMode(Get.context!) ? EColors.darkerGreyColor.withOpacity(0.9) : EColors.greyColor.withOpacity(0.9),
            ),
          ),
      )
    );
  }


  static successSnackBar({required title, message = '', duration = 3}){
    Get.snackbar(
        title,
        message,
    isDismissible: true,
  shouldIconPulse: true,
  colorText: EColors.whiteColor,
  backgroundColor: EColors.primaryColor,
  snackPosition: SnackPosition.TOP,
  duration: Duration(seconds: duration),
      margin: const EdgeInsets.all(10),
      icon: const Icon(Iconsax.check,color: EColors.whiteColor,)
    );
  }


  static warningSnackBar({required title, message = '', duration = 3}){
    Get.snackbar(
        title,
        message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: EColors.whiteColor,
        backgroundColor: EColors.warningColor,
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: duration),
        margin: const EdgeInsets.all(20),
        icon: const Icon(Iconsax.warning_2,color: EColors.whiteColor,)
    );
  }


  static errorSnackBar({required title, message = '', duration = 3}){
    Get.snackbar(
        title,
        message,
        isDismissible: true,
        shouldIconPulse: true,
        colorText: EColors.whiteColor,
        backgroundColor: EColors.errorColor,
        snackPosition: SnackPosition.TOP,
        duration: Duration(seconds: duration),
        margin: const EdgeInsets.all(20),
        icon: const Icon(Iconsax.warning_2,color: EColors.whiteColor,)
    );
  }



}