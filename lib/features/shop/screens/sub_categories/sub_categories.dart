import 'package:flutter/material.dart';
import 'package:shoe_app/common/widgets/carousel_image/carousel_image.dart';
import 'package:shoe_app/common/widgets/title_horizontal/title_horizontal.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';
import '../../../../common/widgets/appBar/appbar.dart';
import '../../../../common/widgets/product_card/horizontal_product_card.dart';
import '../../../../utilities/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: EAppBar(
        backArrow: true,
        title: Text('Mouse',style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const EBanner(image: EImageString.promoBanner1),
              const SizedBox(height: ESizes.spaceBetweenSections,),
              ETitleHorizontal(title: 'Gaming Mouse', onTap: (){}),
              const SizedBox(height: ESizes.spaceBetweenItems,),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                  separatorBuilder: (context,index){
                      return const SizedBox(width: ESizes.spaceBetweenItems,);
                  },
                  itemBuilder: (context , index){
                      return const EHorizontalProductCard(image: EImageString.productImage3,);
                  },
                
                ),
              ),

              const SizedBox(height: ESizes.spaceBetweenSections,),
              ETitleHorizontal(title: 'Gaming Chair', onTap: (){}),
              const SizedBox(height: ESizes.spaceBetweenItems,),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (context,index){
                    return const SizedBox(width: ESizes.spaceBetweenItems,);
                  },
                  itemBuilder: (context , index){
                    return const EHorizontalProductCard(image: EImageString.productImage1,);
                  },

                ),
              ),

              const SizedBox(height: ESizes.spaceBetweenSections,),
              ETitleHorizontal(title: 'Gaming Headphones', onTap: (){}),
              const SizedBox(height: ESizes.spaceBetweenItems,),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  separatorBuilder: (context,index){
                    return const SizedBox(width: ESizes.spaceBetweenItems,);
                  },
                  itemBuilder: (context , index){
                    return const EHorizontalProductCard(image: EImageString.productImage2,);
                  },

                ),
              ),


            ]
          )
        )
      )
    );
  }
}

