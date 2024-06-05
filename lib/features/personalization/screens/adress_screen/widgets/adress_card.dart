import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/utilities/constants/colors.dart';
import 'package:shoe_app/utilities/constants/sizes.dart';

import '../../../../../utilities/helpers/helper_functions.dart';

class EAdressCard extends StatelessWidget {
  const EAdressCard({
    super.key,
     required this.name, 
     required this.number,
      required this.address,
       required this.isSelected,
  });

  final String name;
  final String number;
  final String address;
  final bool isSelected;


  @override
  Widget build(BuildContext context) {

    final bool isDark = EHelperFunctions.isDarkMode(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: ESizes.spaceBetweenItems/2),
      padding: const EdgeInsets.all(ESizes.md),
      decoration: BoxDecoration(
        color: isSelected ? isDark ? EColors.primaryColor : EColors.greyColor : Colors.transparent,
        border: Border.all(color: EColors.greyColor),
        borderRadius: BorderRadius.circular(ESizes.md)
      ),
      child: Stack(
        children:[ 
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(onPressed: (){},
             icon: Icon(isSelected ? Iconsax.tick_circle5 : null ) )),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(name,style: Theme.of(context).textTheme.headlineSmall,),
          Text(number,style: Theme.of(context).textTheme.bodyMedium,),
          Text(address,style: Theme.of(context).textTheme.bodyMedium,),
        
        ],),
        ]
      ),
    );
  }
}