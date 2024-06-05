import 'package:flutter/material.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';

class EDiscountTag extends StatelessWidget {
  const EDiscountTag({
    super.key,
    required this.discountValue,
    this.color = EColors.secondaryColor,
  });

  final String discountValue;
  final Color? color;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 40,
      padding: const EdgeInsets.symmetric(horizontal: ESizes.sm ,vertical: ESizes.xs),
      decoration:  BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(ESizes.sm)
      ),
      child:  Center(child: Text('$discountValue%',style: Theme.of(context).textTheme.labelLarge!.apply(color: EColors.blackColor),)),
    );
  }
}
