import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_app/features/authentication/controller/onboarding_controller/onboarding_controller.dart';
import 'package:shoe_app/features/authentication/screen/onboarding_screen/widgets/onboarding_dot_page_indicator.dart';
import 'package:shoe_app/features/authentication/screen/onboarding_screen/widgets/onboarding_next_button.dart';
import 'package:shoe_app/features/authentication/screen/onboarding_screen/widgets/onboarding_page.dart';
import 'package:shoe_app/features/authentication/screen/onboarding_screen/widgets/onboarding_skip_button.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final OnBoardingController controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          ///horizontal scrollable pages
          PageView(
            onPageChanged: controller.updatePageIndex,
            controller: controller.pageController,
            children: const [
              OnBoardingPage(
                image: EImageString.NewonboardingImage1,
                title: ETextStrings.onBoardingTitle1,
                subtitle: ETextStrings.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EImageString.NewonboardingImage2,
                title: ETextStrings.onBoardingTitle2,
                subtitle: ETextStrings.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EImageString.NewonboardingImage3,
                title: ETextStrings.onBoardingTitle3,
                subtitle: ETextStrings.onBoardingSubTitle3,
              )
            ],
          ),

          ///Skip button
          const OnboardingSkipButton(),

          ///Skip button
          const DotPageIndicator(),

          ///Circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}







