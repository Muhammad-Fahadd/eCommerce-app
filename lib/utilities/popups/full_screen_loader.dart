import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_app/common/widgets/loaders/animation_loader.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

import '../constants/colors.dart';

class EFullScreenLoader{


  static void openLoadingDialogue(String text,String animation) {
    showDialog(
      barrierDismissible: false,
      context: Get.overlayContext!,
      builder: (_) => PopScope(
          canPop: false,
          child: Container(
            color: EHelperFunctions.isDarkMode(Get.context)
                ? EColors.blackColor
                : EColors.whiteColor,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 250,),
                EAnimationLoader(text: text, animation: animation)

              ],
            ),
          )),
    );
  }



  static void stopLoading(){
    Navigator.of(Get.overlayContext!).pop();
  }
}
