import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';
import '../../../utilities/constants/sizes.dart';
import '../../../utilities/helpers/helper_functions.dart';
import '../../styles/padding_size/padding_size.dart';

class SuccessScreen extends StatelessWidget {

   const SuccessScreen({super.key,
     required this.onPressed,
     required this.image,
     required this.subtitle,
     required this.title
   });

   final String image , title , subtitle;
   final VoidCallback? onPressed ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EPaddingSize.customPadding ,
          child: Column(
            children: [
              Image.asset(
                  width: EHelperFunctions.getScreenWidth(context) * 0.6,
                  image),
              const SizedBox(height: ESizes.spaceBetweenSections,),
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: ESizes.spaceBetweenItems,),
              Text(subtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: ESizes.spaceBetweenSections,),
              SizedBox(
                width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                  child: const Text(ETextStrings.eContinue)))
            ],
          ),
        ),
      ),
    );
  }
}
