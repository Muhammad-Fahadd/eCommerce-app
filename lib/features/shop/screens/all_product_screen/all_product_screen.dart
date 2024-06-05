import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/common/widgets/grid_layout/grid_layout.dart';
import 'package:shoe_app/common/widgets/product_card/vertical_product_card.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';

import '../../../../utilities/constants/sizes.dart';

class AllProductScreen extends StatelessWidget {
  const AllProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        backArrow: true,
        title: const Text('Gaming Mouse'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              ///Dropdown menu
              DropdownButtonFormField(
                  decoration:
                      const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                  items: ['item 1', 'item 2', 'item 3', 'item 4 ', 'item 5']
                      .map((option) =>
                          DropdownMenuItem(value: option, child: Text(option)))
                      .toList(),
                  onChanged: (value) {}),

              const SizedBox(height: ESizes.spaceBetweenSections,),

              EGridLayout(itemCount: 8, itemBuilder: (context,index){
                return EVerticalProductCard(
                    image: EImageString.productImage1,
                    discountValue: '25',
                    companyName: 'ASUS',
                    productTitle: 'ASUS gaming chair',
                    productPrice: '25000',
                    onTap: (){
                      Navigator.pushNamed(context, RoutesName.productDetailScreen);
                    }
                );
              })

            ],
          ),
        ),
      ),
    );
  }
}
