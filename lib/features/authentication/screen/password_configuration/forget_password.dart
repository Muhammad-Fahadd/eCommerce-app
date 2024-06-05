import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';

import '../../../../utilities/constants/sizes.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Headings
              Text(ETextStrings.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: ESizes.spaceBetweenItems,),
              Text(ETextStrings.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,),
              const SizedBox(height: ESizes.spaceBetweenSections * 2,),

              ///FormField
              TextFormField(
                decoration: const InputDecoration(
                  labelText: ETextStrings.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              const SizedBox(height: ESizes.spaceBetweenSections,),

              /// submit button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, RoutesName.resetPasswordScreen);
                  }, child: const Text(ETextStrings.submit))),

            ],
          ),
        ),
      ),
    );
  }
}
