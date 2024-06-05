import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/sizes.dart';

class EAddOrRemoveCartButton extends StatelessWidget {
  const EAddOrRemoveCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: EColors.greyColor,
          ),
          child: const Center(
            child: Icon(Iconsax.minus,size: ESizes.iconSm,color: EColors.blackColor,),
          ),
        ),
        const SizedBox(width: ESizes.spaceBetweenItems,),
        const Text('2'),
        const SizedBox(width: ESizes.spaceBetweenItems,),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: EColors.primaryColor,
          ),
          child: const Center(
            child: Icon(Iconsax.add,size: ESizes.iconSm,color: EColors.whiteColor,),
          ),
        ),
      ],
    );
  }
}