import 'package:flutter/widgets.dart';
import 'package:shoe_app/features/authentication/controller/onboarding_controller/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/device/device_utility.dart';
import '../../../../../utilities/helpers/helper_functions.dart';

class DotPageIndicator extends StatelessWidget {
  const DotPageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    EHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: EDeviceUtility.getBottomNavigationBarHeight(context),
      left: ESizes.defaultSpace,
      child: SmoothPageIndicator(
          effect:  const ExpandingDotsEffect(
            dotColor: EColors.greyColor,
            activeDotColor: EColors.primaryColor,
            dotHeight: 6,
          ),
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3),
    );
  }
}