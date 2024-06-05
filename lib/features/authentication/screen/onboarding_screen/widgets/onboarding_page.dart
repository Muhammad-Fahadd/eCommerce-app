import 'package:flutter/material.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/sizes.dart';



class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    required this.title,
    required this.image,
    required this.subtitle,
    super.key,
  });

  final image , title , subtitle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
        ),
       Padding(
         padding: const EdgeInsets.all(ESizes.defaultSpace),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(title,style: Theme.of(context).textTheme.headlineMedium!.apply(color: EColors.whiteColor),textAlign: TextAlign.center,),
             const SizedBox(height: ESizes.spaceBetweenItems,),
             Text(subtitle,style: Theme.of(context).textTheme.bodyMedium!.apply(color: EColors.whiteColor),textAlign: TextAlign.center,)
           ],
         ),
       )

      ]
    );



    
  }
}