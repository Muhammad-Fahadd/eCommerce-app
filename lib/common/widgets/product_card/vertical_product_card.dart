import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/enums.dart';
import '../../../utilities/constants/sizes.dart';
import '../discount_tag/discount_tag.dart';
import '../favourite_icon/favourite_icon.dart';
import '../horizontal_price_and_add_icon/horizontal_price_icon.dart';
import '../product_company_name_verified/product_company_name_verified.dart';
import '../product_title_text/product_title_text.dart';


class EVerticalProductCard extends StatelessWidget {
  const EVerticalProductCard({super.key,
    required this.image,
    required this.discountValue,
    required this.companyName,
    required this.productTitle,
    required this.productPrice,
    required this.onTap,
  });

  final String image;
  final String discountValue;
  final String companyName;
  final String productTitle;
  final String productPrice;
  final VoidCallback onTap;



  @override
  Widget build(BuildContext context) {

    bool isDark = EHelperFunctions.isDarkMode(context);

    return  GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:  BoxDecoration(
          border: Border.all(
              color: isDark ? EColors.greyColor : EColors.darkerGreyColor,
              width: 0.1),
          borderRadius: const BorderRadius.all(Radius.circular(ESizes.md))
        ),
        padding: const EdgeInsets.all(1),
        width: 160,
        child: Column(
          children: [
            ///Image, favourite icon and discount tag on container
          Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              color: isDark ? EColors.darkContainerColor : EColors.primaryColor.withOpacity(0.05),
              borderRadius: BorderRadius.circular(ESizes.productImageRadius)
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                ///product image
                Image.asset(
                    image),

                ///discount icon
                 Positioned(
                  top: 12,
                  left: 5,
                  child: EDiscountTag(discountValue: discountValue,),
                ),

                ///favourite icon
                 Positioned(
                  top: 12,
                    right: 5,
                    child: EFavouriteIcon(icon: Iconsax.heart5,onTap: (){},))
              ],
            ),
          ),

            const SizedBox(height: ESizes.spaceBetweenItems / 2,),

             Padding(
              padding: const EdgeInsets.only(left: ESizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Product title
                   EProductTitleText(title: productTitle,),

                  const SizedBox(height: ESizes.spaceBetweenItems / 2,),

                  ///company name
                  EProductCompanyNameVerified(companyName: companyName, titleSize: TextSizes.small,),

                ],
              ),
            ),
            const Spacer(),
            ///product price and add button
            Padding(
              padding: const EdgeInsets.only(left: ESizes.sm),
              child: EHorizontalPriceAndIcon(price: productPrice, icon: Iconsax.add,),
            ),
        ],),
      ),
    );
  }
}





