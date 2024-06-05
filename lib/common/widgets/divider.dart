import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

import '../../utilities/constants/colors.dart';

class EDivider extends StatelessWidget {
  const EDivider({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final isDark = EHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: isDark ? EColors.darkGreyColor : EColors.greyColor,
            indent: 60,
            endIndent: 5,
            thickness: 1,),
        ),
        Text(title,style: Theme.of(context).textTheme.labelMedium,),
        Flexible(
          child: Divider(
            color: isDark ? EColors.darkGreyColor : EColors.greyColor,
            indent: 5,
            endIndent: 60,
            thickness: 1,),
        ),
      ],
    );
  }
}
