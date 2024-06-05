import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';

import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/constants/text_strings.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: ESizes.spaceBetweenSections,bottom: ESizes.spaceBetweenItems),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                labelText: ETextStrings.email,
                prefixIcon: Icon(Iconsax.direct_right)
            ),
          ),
          const SizedBox(height: ESizes.spaceBetweenTextFormFields),
          TextFormField(
            decoration: const InputDecoration(
                labelText: ETextStrings.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      value: true,
                      onChanged: (value){}
                  ),
                  const Text(ETextStrings.rememberMe),
                ],
              ),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, RoutesName.forgetPasswordScreen);
              }, child: const Text(ETextStrings.forgetPassword,),)
            ],
          ),
          const SizedBox(height: ESizes.spaceBetweenItems,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, RoutesName.navigationMenuScreen);
              },
              child: const Text(ETextStrings.logIn),
            ),
          ),
          const SizedBox(height: ESizes.spaceBetweenItems,),
          TextButton(onPressed: (){
            Navigator.pushNamed(context, RoutesName.signUpScreen);
          }, child:  const Text(ETextStrings.createAccount,)),
        ],
      ),
    );
  }
}
