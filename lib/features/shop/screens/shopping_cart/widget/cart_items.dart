import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

import '../../../../../common/widgets/cart/cart_button.dart';
import '../../../../../common/widgets/product_company_name_verified/product_company_name_verified.dart';
import '../../../../../common/widgets/product_title_text/product_title_text.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/enums.dart';
import '../../../../../utilities/constants/images_string.dart';
import '../../../../../utilities/constants/sizes.dart';

class ECartItems extends StatelessWidget {
  const ECartItems({
    super.key,  this.showAddOrRemoveButton = true,
  });

  final bool showAddOrRemoveButton;

  @override
  Widget build(BuildContext context) {

    final bool isDark = EHelperFunctions.isDarkMode(context);

    return ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ESizes.sm),
                        color: isDark ?  EColors.darkGreyColor :  EColors.primaryColor.withOpacity(0.1),
                    ),
                    child: Image.asset(EImageString.productImage1),
                  ),
                  const SizedBox(
                    width: ESizes.spaceBetweenItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const EProductCompanyNameVerified(
                          companyName: 'Razor', titleSize: TextSizes.small),
                      const Flexible(
                          child: EProductTitleText(
                            title: 'Razor Gaming chair',
                            maxLine: 1,
                          )),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'color',
                            style: Theme.of(context).textTheme.labelSmall),
                        TextSpan(
                            text: 'Black',
                            style: Theme.of(context).textTheme.labelLarge),
                        TextSpan(
                            text: 'size',
                            style: Theme.of(context).textTheme.labelSmall),
                        TextSpan(
                            text: 'Large',
                            style: Theme.of(context).textTheme.labelLarge),
                      ])),
                    ],
                  ),
                ],
              ),

              if(showAddOrRemoveButton)
              const SizedBox(
                height: ESizes.spaceBetweenItems,
              ),

              if(showAddOrRemoveButton)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      SizedBox(
                        width: 75,
                      ),
                      EAddOrRemoveCartButton()
                    ],
                  ),
                  Text(
                    '\$244',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),
            ],
          );
        },
        separatorBuilder: (_, index) {
          return const SizedBox(
            height: ESizes.spaceBetweenSections,
          );
        },
        itemCount: 3);
  }
}
