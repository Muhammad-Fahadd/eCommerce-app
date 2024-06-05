import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/appBar/appbar.dart';
import '../../../../../common/widgets/favourite_icon/favourite_icon.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/images_string.dart';
import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/helpers/helper_functions.dart';

class EProductImageSlider extends StatelessWidget {
  const EProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final bool isDark = EHelperFunctions.isDarkMode(context);

    return Container(
      width: EHelperFunctions.getScreenWidth(context),
      decoration: BoxDecoration(
          color: isDark ? EColors.darkerGreyColor : EColors.lightContainerColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(
                ESizes.lg,
              ),
              bottomRight: Radius.circular(
                ESizes.lg,
              ))),
      child: Stack(
        children: [

          ///Back Image
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(ESizes.productImageRadius * 3),
              child: Center(
                child: Image.asset(
                    fit: BoxFit.contain,
                    EImageString.productImage1),
              ),
            ),
          ),

          ///Image slider

          Positioned(
            bottom: 20,
            left: ESizes.defaultSpace,
            right: 0,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_,index) => Container(
                  padding: const EdgeInsets.all(ESizes.sm),
                  width: 80,
                  decoration: BoxDecoration(
                      color: isDark ? EColors.blackColor : EColors.whiteColor,
                      borderRadius: BorderRadius.circular(ESizes.sm),
                  ),
                  child: const Image(image: AssetImage(EImageString.productImage3),),
                ),
                separatorBuilder: (_,__) => const SizedBox(width: ESizes.spaceBetweenItems,),
                itemCount: 7,
              ),
            ),
          ),

          ///back-arrow and favourite icon
          EAppBar(
            backArrow: true,
            action: const [
              EFavouriteIcon(icon: Iconsax.heart5),
            ],
          )

        ],
      ),
    );
  }
}
