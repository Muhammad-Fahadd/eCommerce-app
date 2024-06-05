import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///Variable
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  ///update page index
  void updatePageIndex(index) {
    currentPageIndex.value = index;
  }

  ///skip button
  void skipButton(context) {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write('isFirstTime', false);
      Navigator.pushReplacementNamed(context, RoutesName.loginScreen);
    } else {
      currentPageIndex.value = 2;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }

  ///next button
  void nextButton(context) {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write('isFirstTime', false);
      Navigator.pushReplacementNamed(context, RoutesName.loginScreen);
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///update page indicator
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  ///update circular progress indicator
  double updateCircularIndicator() {
    if (currentPageIndex.value == 0) {
      return 0.333;
    } else if (currentPageIndex.value == 1) {
      return 0.666;
    } else {
      return 1.0;
    }
  }
}
