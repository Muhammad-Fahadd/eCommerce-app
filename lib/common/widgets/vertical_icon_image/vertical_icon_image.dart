import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';


class EVerticalIconImage extends StatelessWidget {

  const EVerticalIconImage({
    super.key, required this.title, required this.image, this.onTap,
  });

  final String title , image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {

    bool isDark = EHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: ESizes.md * 1.5),
        child: Column(
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  color: isDark ? EColors.darkContainerColor : EColors.primaryColor.withOpacity(0.05),
                  shape: BoxShape.circle
              ),
              child: Center(child: Image.asset(
                  width: 48,
                  image)),
            ),
            const SizedBox(height: ESizes.spaceBetweenItems / 2,),
            SizedBox(
                width: 55,
                child: Text(title,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: isDark ? EColors.whiteColor : EColors.blackColor,
                      overflow: TextOverflow.ellipsis),))
          ],
        ),
      ),
    );
  }
}
