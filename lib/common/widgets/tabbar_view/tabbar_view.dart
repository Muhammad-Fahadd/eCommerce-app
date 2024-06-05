import 'package:flutter/cupertino.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/images_string.dart';
import '../../../utilities/constants/sizes.dart';
import '../../../utilities/helpers/helper_functions.dart';
import '../../../utilities/routes/routes_name.dart';
import '../brand_card/brand_card.dart';
import '../container/container_with_image.dart';
import '../grid_layout/grid_layout.dart';
import '../product_card/vertical_product_card.dart';
import '../title_horizontal/title_horizontal.dart';

class ETabBarView extends StatelessWidget {
  const ETabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ESizes.md)
                ),
                child:   Column(
                  children: [
                    EBrandCard(border: false,
                      color: EHelperFunctions.isDarkMode(context) ? EColors.darkContainerColor : EColors.primaryColor.withOpacity(0.05),),
                    const Row(
                      children: [
                        EContainerImage(image: EImageString.productImage1,),
                        EContainerImage(image: EImageString.productImage2,),
                        EContainerImage(image: EImageString.productImage3,),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: ESizes.spaceBetweenSections,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ESizes.md)
                ),
                child:   Column(
                  children: [
                    EBrandCard(border: false,
                      color: EHelperFunctions.isDarkMode(context)
                          ? EColors.darkContainerColor
                          : EColors.primaryColor.withOpacity(0.05),),
                    const Row(
                      children: [
                        EContainerImage(image: EImageString.productImage1,),
                        EContainerImage(image: EImageString.productImage2,),
                        EContainerImage(image: EImageString.productImage3,),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: ESizes.spaceBetweenSections,),

              ETitleHorizontal(title: 'You might like', onTap: (){}),

              const SizedBox(height: ESizes.spaceBetweenItems,),

              EGridLayout(
                  itemCount: 4,
                  itemBuilder: (context , isInnerBoxScrolled){
                    return  EVerticalProductCard(
                      image: EImageString.productImage3,
                      discountValue: '15',
                      companyName: 'Adidas',
                      productTitle: 'gaming headphones',
                      productPrice: '1000',
                        onTap: (){
                          Navigator.pushNamed(context, RoutesName.productDetailScreen);
                        },

                    );
                  })


            ],
          ),
        )
      ],
    );
  }
}
