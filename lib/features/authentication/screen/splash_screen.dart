import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

import 'onboarding_screen/onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => const OnboardingScreen())),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
                height: EHelperFunctions.getScreenHeight(context) * 0.4,
                width: EHelperFunctions.getScreenWidth(context) * 0.3,
                image:  AssetImage(EHelperFunctions.isDarkMode(context) == true ? EImageString.darkModeLogo : EImageString.lightModeLogo)),
          ),
        ],
      ),
    );
  }
}


