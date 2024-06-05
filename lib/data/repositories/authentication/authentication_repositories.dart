import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shoe_app/features/authentication/screen/login/login.dart';
import 'package:shoe_app/features/authentication/screen/onboarding_screen/onboarding_screen.dart';

class AuthenticationRepositories extends GetxController {
  static AuthenticationRepositories get instance => Get.find();

  ///variable
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;


  ///called from main.dart on app launch
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  ///function to show relevant screen
  void screenRedirect()async{
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true ?
        Get.offAll(const LoginScreen()) : Get.offAll(const OnboardingScreen());
  }

  //----------------------Email & password Signin--------------------//

///[Email Authentication] - SignIn

///[Email Authentication] - Register

}
