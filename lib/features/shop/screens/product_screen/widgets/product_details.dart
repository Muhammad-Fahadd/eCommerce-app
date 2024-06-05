import 'package:flutter/material.dart';
import 'package:shoe_app/features/shop/screens/product_screen/widgets/terxt_detail_screen.dart';
import '../../../../../common/widgets/discount_tag/discount_tag.dart';
import '../../../../../common/widgets/product_company_name_verified/product_company_name_verified.dart';
import '../../../../../utilities/constants/enums.dart';
import '../../../../../utilities/constants/sizes.dart';

class EProductDetails extends StatelessWidget {
  const EProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const EDiscountTag(discountValue: '75'),
            const SizedBox(width: ESizes.spaceBetweenItems,),
            Text('\$125',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
            const SizedBox(width: ESizes.spaceBetweenItems,),
            Text('\$100',style: Theme.of(context).textTheme.headlineMedium,),
          ],
        ),
        const SizedBox(height: ESizes.spaceBetweenItems,),
        const Text('Leather gaming chair',),
        const SizedBox(height: ESizes.spaceBetweenItems,),
        const ETextDetailScreen(title: 'Status : ', value: 'In Stock',),
        const SizedBox(height: ESizes.spaceBetweenItems,),
        const EProductCompanyNameVerified(companyName: 'ASUS', titleSize: TextSizes.medium)
      ],
    );
  }
}

