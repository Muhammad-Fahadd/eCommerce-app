import 'package:flutter/cupertino.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';
import '../../../utilities/helpers/helper_functions.dart';

class EContainerImage extends StatelessWidget {
  const EContainerImage({
    super.key, required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ESizes.sm),
          color: EHelperFunctions.isDarkMode(context) ? EColors.darkContainerColor : EColors.primaryColor.withOpacity(0.05),
        ),
        padding: const EdgeInsets.all(ESizes.sm),
        margin: const EdgeInsets.only(top: ESizes.sm,right: ESizes.sm),
        height: 100,
        child: Image.asset(image),
      ),
    );
  }
}
