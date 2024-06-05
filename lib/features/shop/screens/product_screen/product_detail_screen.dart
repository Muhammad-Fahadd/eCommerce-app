import 'package:flutter/material.dart';
import 'package:shoe_app/common/widgets/bottom_navigation_bar/bottom_add_to_cart.dart';
import 'package:shoe_app/common/widgets/readmore_text/readmore_text.dart';
import 'package:shoe_app/common/widgets/title_horizontal/heading.dart';
import 'package:shoe_app/features/shop/screens/product_screen/widgets/product_details.dart';
import 'package:shoe_app/features/shop/screens/product_screen/widgets/product_image_slider.dart';
import 'package:shoe_app/features/shop/screens/product_screen/widgets/product_selections.dart';
import 'package:shoe_app/features/shop/screens/product_screen/widgets/rating_and_share_button.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';

import '../../../../utilities/constants/sizes.dart';

class EProductDetailScreen extends StatelessWidget {
  const EProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const EProductImageSlider(),
            Padding(
              padding:  const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  const ERatingAndShare(),
                  const EProductDetails(),
                  const SizedBox(height: ESizes.spaceBetweenSections,),
                  const EProductSelections(),
                  const SizedBox(height: ESizes.spaceBetweenSections,),
                  SizedBox(
                      width: EHelperFunctions.getScreenWidth(context),
                      child: ElevatedButton(onPressed: (){}, child: const Text('CheckOut'))),
                  const SizedBox(height: ESizes.spaceBetweenSections,),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const EHeading(title: 'Description'),
                      const SizedBox(height: ESizes.spaceBetweenItems / 1.5,),
                      const EReadMoreText(text: ETextStrings.confirmEmailSubTitle,),
                      const Divider(),
                      const SizedBox(height: ESizes.spaceBetweenItems,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const EHeading(title: 'Reviews(188)'),
                          IconButton(onPressed: (){
                            Navigator.pushNamed(context, RoutesName.reviewScreen);
                          }, icon: const Icon(Icons.keyboard_arrow_right))
                        ],
                      ),

                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const EBottomAddToCart(),

    );
  }
}








