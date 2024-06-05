import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';
import 'package:shoe_app/utilities/helpers/network_manager.dart';
import 'package:shoe_app/utilities/popups/full_screen_loader.dart';
import 'package:shoe_app/utilities/popups/loaders.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  ///variables
  final RxBool hidePassword = true.obs;
  final RxBool privacyPolicy = false.obs;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();




  ///Signup
  void signUp()async{

    try{
      /// Start loading
      EFullScreenLoader.openLoadingDialogue('We are processing your information...', EImageString.doccerAnimation);

      ///Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        return;
      }

      ///Form validation
      if(!signUpFormKey.currentState!.validate()){
        return;
      }

      ///privacy policy check
      if(!privacyPolicy.value){
       ELoaders.warningSnackBar(
         title: 'Accept Privacy Policy',
         message: 'In order to create an account, you must have to read and accept Privacy Policy & Terms of Use.'
       );
       return;
      }

      ///Register user in firebase and store user data

      ///save authenticated user data in fireStore

      ///show success message

      ///move to verify email screen

    }catch(e){
      ///show some error to user
      ELoaders.errorSnackBar(title: 'Oh Snap!',message: e.toString());
    }finally{
      ///stop loading
      EFullScreenLoader.stopLoading();
    }

  }



}