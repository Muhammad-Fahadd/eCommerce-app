import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/features/authentication/controller/onboarding_controller/onboarding_controller.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/device/device_utility.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      top: EDeviceUtility.getAppBarHeight(),
      right: ESizes.defaultSpace,
      child: IconButton(onPressed: (){
        controller.skipButton(context);
      }, icon: const Row(
        children: [
          Text('Skip',style: TextStyle(color: EColors.whiteColor),),
          Icon(Iconsax.arrow_right_3,size: ESizes.md,color: EColors.primaryColor)
        ],
      )),
    );
  }
}