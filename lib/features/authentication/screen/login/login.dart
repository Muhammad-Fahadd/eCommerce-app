import 'package:flutter/material.dart';
import 'package:shoe_app/common/styles/padding_size/padding_size.dart';
import 'package:shoe_app/common/widgets/divider.dart';
import 'package:shoe_app/features/authentication/screen/login/widgets/login_form.dart';
import 'package:shoe_app/features/authentication/screen/login/widgets/login_header.dart';
import 'package:shoe_app/common/widgets/social_buttons.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import '../../../../utilities/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EPaddingSize.customPadding,
          child: Column(
            children: [
              ///Title subtitle
              const ELoginheader(),
        
              ///Form
              const ELoginForm(),
        
              ///Divider
               const EDivider(title: ETextStrings.orSignInWith,),
              const SizedBox(height: ESizes.spaceBetweenSections,),
        
              ///sign in buttons
              const ESocialButtons(),
              const SizedBox(height: ESizes.spaceBetweenSections - 7,),
              Text(ETextStrings.termsConditionMessage,style: Theme.of(context).textTheme.labelSmall,textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}




