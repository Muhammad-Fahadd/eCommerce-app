import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/features/authentication/controller/onboarding_controller/onboarding_controller.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/device/device_utility.dart';
import '../../../../../utilities/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key,

  });

  @override
  Widget build(BuildContext context) {

    EHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: EDeviceUtility.getBottomNavigationBarHeight(context),
      right: ESizes.defaultSpace,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 65,
              width: 65,
              child: Obx(() => CircularProgressIndicator(
                strokeWidth: 3,
                strokeAlign: BorderSide.strokeAlignOutside,
                strokeCap: StrokeCap.round,
                color: EColors.primaryColor,
                value: controller.updateCircularIndicator(),
              )),
            ),
            SizedBox(
              height: 60,
              width: 60,
              child: ElevatedButton(
                onPressed: (){
                  controller.nextButton(context);
                },
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      foregroundColor: EColors.whiteColor,
                      backgroundColor:  EColors.primaryColor),
                  child: const Center(child: Icon(Iconsax.arrow_right_3,))),
            ),
          ],
        ),
    );
  }
}