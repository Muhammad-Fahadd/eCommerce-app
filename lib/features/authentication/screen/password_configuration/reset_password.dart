import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';

import '../../../../utilities/constants/sizes.dart';
import '../../../../utilities/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.clear)),
          const SizedBox(width: ESizes.sm,),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              ///Image
              Image.asset(
                EImageString.deliveredEmailIllustration,
                  width: EHelperFunctions.getScreenWidth(context) * 0.6,
                  ),

              ///Texts
              const SizedBox(height: ESizes.spaceBetweenSections,),
              Text(ETextStrings.changeYourPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: ESizes.spaceBetweenItems,),
              Text(ETextStrings.changeYourPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: ESizes.spaceBetweenSections,),

              ///button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){}, child: const Text(ETextStrings.done))),
              TextButton(onPressed: (){}, child: const Text(ETextStrings.resendEmail))
            ],
          ),
        ),
      ),
    );
  }
}
