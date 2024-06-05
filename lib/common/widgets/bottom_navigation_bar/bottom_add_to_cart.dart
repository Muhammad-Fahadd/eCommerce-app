import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/common/widgets/favourite_icon/favourite_icon.dart';
import 'package:shoe_app/utilities/device/device_utility.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';

class EBottomAddToCart extends StatelessWidget {
  const EBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {

    bool isDark = EHelperFunctions.isDarkMode(context);

    return Container(
      height: EDeviceUtility.getBottomNavigationBarHeight(context),
      padding: const EdgeInsets.symmetric(horizontal: ESizes.defaultSpace,vertical: ESizes.sm),
      decoration:  BoxDecoration(
        color: isDark ? EColors.darkGreyColor : EColors.greyColor,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(ESizes.lg),topRight:Radius.circular(ESizes.lg) ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
           children: [
             EFavouriteIcon(icon: Iconsax.minus,onTap: (){},),
             const SizedBox(width: ESizes.spaceBetweenItems,),
             const Text('2'),
             const SizedBox(width: ESizes.spaceBetweenItems,),
            EFavouriteIcon(icon: Iconsax.add,onTap: (){},),
           ],
         ),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(ESizes.sm),
                  backgroundColor: EColors.blackColor
                ),
                  onPressed: (){},
                  child: const Center(child: Text('Add to Cart'))
              ),
          ],)

        ],
      ),
    );
  }
}
