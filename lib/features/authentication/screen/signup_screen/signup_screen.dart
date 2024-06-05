import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_app/features/authentication/controller/onboarding_controller/signup_controller.dart';
import 'package:shoe_app/features/authentication/screen/signup_screen/widgets/signup_form.dart';
import 'package:shoe_app/features/authentication/screen/signup_screen/widgets/terms_condition_checkbox.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = EHelperFunctions.isDarkMode(context);
    final controller = Get.put(SignUpController());
    return  Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(ETextStrings.signupTitle,style: Theme.of(context).textTheme.headlineMedium!.apply(color: EColors.primaryColor),),
              const SizedBox(height: ESizes.spaceBetweenSections,),
              ///Form
              const SignUpForm(),
              const SizedBox(height: ESizes.spaceBetweenSections,),
              const TermsConditionCheckBox(),
              const SizedBox(height: ESizes.spaceBetweenSections,),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    controller.signUp();
                  }, child: const Text(ETextStrings.createAccount))),
              const SizedBox(height: ESizes.xs,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(ETextStrings.alreadyAccount,style: Theme.of(context).textTheme.bodySmall,),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  },
                      child:  Text(ETextStrings.logIn,style: Theme.of(context).textTheme.bodyLarge,)),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}


