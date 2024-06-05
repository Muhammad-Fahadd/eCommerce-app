import 'package:flutter/material.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/enums.dart';
import '../../../utilities/constants/images_string.dart';
import '../../../utilities/constants/sizes.dart';
import '../../../utilities/helpers/helper_functions.dart';
import '../product_company_name_verified/product_company_name_verified.dart';

class EBrandCard extends StatelessWidget {
  const EBrandCard({
    super.key, required this.border, required this.color,
  });

  final bool border;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ESizes.md),
      width: EHelperFunctions.getScreenHeight(context),
      decoration: BoxDecoration(
        color: color,
          borderRadius:
          BorderRadius.circular(ESizes.borderRadiusLg),
          border: border ? Border.all(color: EColors.blackColor) : null),
      child: Row(
        children: [
          Flexible(child: Image.asset(
              EImageString.shoeIcon)),
          const SizedBox(
            width: ESizes.md,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const EProductCompanyNameVerified(
                  companyName: 'Nike',
                  titleSize: TextSizes.medium,
                ),
                Text(
                  '125 Products available',
                  style: Theme.of(context).textTheme.labelSmall,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
