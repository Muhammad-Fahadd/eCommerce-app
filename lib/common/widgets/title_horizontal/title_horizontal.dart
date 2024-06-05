import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';
import '../../../utilities/constants/text_strings.dart';

class ETitleHorizontal extends StatelessWidget {
  const ETitleHorizontal({
    super.key, required this.title, required this.onTap,  this.rightTitle = ETextStrings.viewAll, this.showArrow = true,
  });

  final String title;
  final VoidCallback onTap;
  final String? rightTitle;
  final bool? showArrow;


  @override
  Widget build(BuildContext context) {

    bool isDark = EHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                rightTitle!,
                style: Theme.of(context).textTheme.labelMedium!.apply(color: isDark ? EColors.greyColor : EColors.darkerGreyColor ),
              ),

                Icon(
                  showArrow! ? Iconsax.arrow_right_3 : null,
                  size: ESizes.md,
                  color: isDark ? EColors.greyColor : EColors.darkGreyColor,
              ),

            ],
          ),
        ),
      ],
    );
  }
}
