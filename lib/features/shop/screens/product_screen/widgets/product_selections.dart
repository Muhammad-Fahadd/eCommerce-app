import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoe_app/common/widgets/chips/chips.dart';
import 'package:shoe_app/features/shop/screens/product_screen/widgets/terxt_detail_screen.dart';
import '../../../../../common/widgets/title_horizontal/heading.dart';
import '../../../../../utilities/constants/sizes.dart';

class EProductSelections extends StatelessWidget {
  const EProductSelections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            EHeading(title: 'Variations:'),
            SizedBox(width: ESizes.spaceBetweenItems,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ETextDetailScreen(title: 'Price : ', value: '300',),
                ETextDetailScreen(title: 'Stock : ', value: 'In Stock',),
              ],
            )
          ],
        ),
        const SizedBox(height: ESizes.spaceBetweenItems,),
        const EHeading(title: 'Colors'),
        const SizedBox(height: ESizes.spaceBetweenItems,),
        Wrap(
          spacing: 10,
          children: [
            EChips(
                selected: false,
                text: 'Blue',
                onSelected: (value){},
            ),
            EChips(
              selected: false,
              text: 'Green',
              onSelected: (value){},
            ),
            EChips(
              selected: true,
              text: 'Red',
              onSelected: (value){},
            ),
          ],
        ),
        const SizedBox(height: ESizes.spaceBetweenItems,),
        const EHeading(title: 'Size'),
        const SizedBox(height: ESizes.spaceBetweenItems,),
        Wrap(
          spacing: 10,
          children: [
          EChips(selected: false, text: 'EU 30', onSelected: (value){}),
            EChips(selected: true, text: 'EU 30', onSelected: (value){}),
            EChips(selected: false, text: 'EU 30', onSelected: (value){}),


          ],
        ),

      ],
    );
  }
}
