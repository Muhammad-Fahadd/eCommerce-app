import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/common/widgets/cart_counter_icon/cart_counter_icon.dart';
import 'package:shoe_app/common/widgets/title_horizontal/title_horizontal.dart';
import 'package:shoe_app/features/shop/screens/home/widget/carousel.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';

import '../../../../common/widgets/grid_layout/grid_layout.dart';
import '../../../../common/widgets/product_card/vertical_product_card.dart';
import '../../../../common/widgets/vertical_icon_image/vertical_icon_image.dart';
import '../../../../utilities/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          ETextStrings.appName,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        action: [
          IconButton(
              onPressed: () {}, icon: const Icon(Iconsax.notification)),
          IconButton(
              onPressed: () {}, icon: const Icon(Iconsax.heart4)),
          const ECartCounterIcon(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: ESizes.defaultSpace),
          child: Column(
            children: [
              ///Custom Appbar
              const SizedBox(
                height: ESizes.spaceBetweenItems,
              ),

              ///Search form field
              TextFormField(
                decoration: const InputDecoration(
                  labelText: ETextStrings.searchForProducts,
                  prefixIcon: Icon(Iconsax.search_normal),
                ),
              ),
              const SizedBox(
                height: ESizes.spaceBetweenSections,
              ),

              ///Banner
              const ECarousel(),
              const SizedBox(
                height: ESizes.spaceBetweenSections,
              ),

              ///Horizontal heading and button
              ETitleHorizontal(title: ETextStrings.categories,onTap: (){
                Navigator.pushNamed(context, RoutesName.allProductScreen);
              },),
              const SizedBox(
                height: ESizes.spaceBetweenItems,
              ),

              ///Horizontal categories list
              SizedBox(
                height: 90,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return EVerticalIconImage(
                        onTap: (){
                          Navigator.pushNamed(context, RoutesName.subCategoriesScreen);
                        },
                          title: ETextStrings.shoes,
                          image: EImageString.productImage3);
                    }),
              ),

              const SizedBox(
                height: ESizes.spaceBetweenSections,
              ),

              ///Horizontal heading and button
              ETitleHorizontal(title: ETextStrings.bestSellers,onTap: (){},),
              const SizedBox(
                height: ESizes.spaceBetweenItems,
              ),

              ///horizontal product card list
              SizedBox(
                height: 249,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                    itemBuilder: (context , index){
                  return  Padding(
                    padding: const EdgeInsets.only(right: ESizes.md),
                    child: EVerticalProductCard(
                      onTap: (){
                        Navigator.pushNamed(context, RoutesName.productDetailScreen);
                      },
                      image: EImageString.productImage1,
                      discountValue: '20',
                      companyName: 'ASUS',
                      productTitle: 'Gaming Chair',
                      productPrice: '25,000',
                    ),
                  );
                    }),
              ),
              const SizedBox(height: ESizes.spaceBetweenSections,),

              ///Horizontal heading and button
              ETitleHorizontal(title: 'All Products', onTap: (){}),
              const SizedBox(height: ESizes.spaceBetweenItems,),

               EGridLayout(
                 itemCount: 4,
                 itemBuilder: (BuildContext context, index) {
                  return  EVerticalProductCard(
                      onTap: (){
                        Navigator.pushNamed(context, RoutesName.productDetailScreen);
                      },
                      image: EImageString.productImage2,
                      discountValue: '50',
                      companyName: 'Steel Series',
                      productTitle: 'Steel Series Gaming Headphones',
                      productPrice: '10,000'
                  );

              },),

            ],
          ),
        ),
      ),
    );
  }
}


