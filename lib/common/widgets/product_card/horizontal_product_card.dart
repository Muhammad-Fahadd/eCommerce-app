import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/enums.dart';
import '../../../utilities/constants/sizes.dart';
import '../../../utilities/helpers/helper_functions.dart';
import '../discount_tag/discount_tag.dart';
import '../favourite_icon/favourite_icon.dart';
import '../horizontal_price_and_add_icon/horizontal_price_icon.dart';
import '../product_company_name_verified/product_company_name_verified.dart';
import '../product_title_text/product_title_text.dart';

class EHorizontalProductCard extends StatelessWidget {
   const EHorizontalProductCard({
    super.key, required this.image,
  });

   final String image;

  @override
  Widget build(BuildContext context) {

    bool isDark = EHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.all(1),
      width: EHelperFunctions.getScreenWidth(context) * 0.81,
      height: 120,
      decoration:  BoxDecoration(
          border: Border.all(
              color: isDark ? EColors.greyColor : EColors.darkerGreyColor,
              width: 0.1),
          borderRadius: const BorderRadius.all(Radius.circular(ESizes.md))
      ),
      child: Row(
        children: [
          Container(
            width: 145,
            decoration: BoxDecoration(
                color: isDark ? EColors.darkContainerColor : EColors.primaryColor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(ESizes.sm)
            ),
            child: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  child: SizedBox(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                        image),
                  ),
                ),
                const Positioned(
                    left: 5,
                    top: 10,
                    child: EDiscountTag(discountValue: '25')),
                const Positioned(
                    right: 5,
                    top: 10,
                    child: EFavouriteIcon(icon: Iconsax.heart5))
              ],
            ),
          ),
          const SizedBox(
            width: 185,
            child: Padding(
              padding: EdgeInsets.only(left: ESizes.sm,top: ESizes.sm),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EProductTitleText(title: 'Comfortable Gaming Chair'),
                      SizedBox(height: ESizes.sm,),
                      EProductCompanyNameVerified(companyName: 'ASUS', titleSize: TextSizes.medium),
                    ],
                  ),
                  Spacer(),
                  EHorizontalPriceAndIcon(price: '2500', icon: Iconsax.add),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
