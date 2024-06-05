import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/common/widgets/grid_layout/grid_layout.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';

import '../../../../common/widgets/product_card/vertical_product_card.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../../../utilities/routes/routes_name.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: EAppBar(
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium,),
        action: [
          IconButton(onPressed: (){}, icon: const Icon(Iconsax.add))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              EGridLayout(itemCount: 7, itemBuilder: (context , index){
                return EVerticalProductCard(
                    image: EImageString.productImage1,
                    discountValue: '12',
                    companyName: 'mezan',
                    productTitle: 'mouse',
                    productPrice: '8500',
                    onTap: (){
                  Navigator.pushNamed(context, RoutesName.productDetailScreen);
                },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
