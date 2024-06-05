import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';
import 'package:shoe_app/utilities/constants/sizes.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, RoutesName.loginScreen);
          }, icon: const Icon(Icons.clear)),
          const SizedBox(width: ESizes.sm,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                  width: EHelperFunctions.getScreenWidth(context) * 0.6,
                  EImageString.deliveredEmailIllustration),
              const SizedBox(height: ESizes.spaceBetweenSections,),
              Text(ETextStrings.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: ESizes.spaceBetweenItems,),
              Text(ETextStrings.dummyEmail,style: Theme.of(context).textTheme.labelLarge,),
              const SizedBox(height: ESizes.spaceBetweenItems,),
              Text(ETextStrings.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: ESizes.spaceBetweenSections,),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, RoutesName.successScreen);
                  }, child: const Text(ETextStrings.eContinue))),
              TextButton(onPressed: (){}, child: const Text(ETextStrings.resendEmail))


            ],
          ),
        ),
      ),
    );
  }
}
