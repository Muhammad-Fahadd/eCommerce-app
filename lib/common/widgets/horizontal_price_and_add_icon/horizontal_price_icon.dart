import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';

class EHorizontalPriceAndIcon extends StatelessWidget {
  const EHorizontalPriceAndIcon({
    super.key,
    required this.price,
    required this.icon,
    this.priceCurrency = 'PKR',
  });

  final String price;
  final String? priceCurrency;
  final IconData icon;

  @override
  Widget build(BuildContext context) {

    bool isDark = EHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
           "${priceCurrency!} $price",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: isDark ? EColors.whiteColor : EColors.blackColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(ESizes.sm + 7),
                  bottomRight: Radius.circular(ESizes.sm + 7))),
          child: SizedBox(
            width: ESizes.iconLg + 5,
            height: ESizes.iconLg + 5,
            child: Center(
              child: Icon(
                color: isDark ? EColors.blackColor : EColors.whiteColor,
                icon,
              ),
            ),
          ),
        )
      ],
    );
  }
}
