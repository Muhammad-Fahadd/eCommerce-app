import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';
import '../../../utilities/constants/colors.dart';

class ECartCounterIcon extends StatelessWidget {
  const ECartCounterIcon({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    bool isDark = EHelperFunctions.isDarkMode(context);

    return Stack(
      children: [
         IconButton(
           icon: const Icon(Iconsax.shopping_bag),
           onPressed: (){
             Navigator.pushNamed(context, RoutesName.cartScreen);
           },
         ),
        Positioned(
          right: 3,
          top: 3,
          child: Container(
            width: 15,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: isDark ? EColors.whiteColor : EColors.blackColor,
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelSmall!.apply(
                    color:
                    isDark ? EColors.blackColor : EColors.whiteColor),
              ),
            ),
          ),
        )
      ],
    );
  }
}
