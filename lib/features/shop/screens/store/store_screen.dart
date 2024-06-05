import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/common/widgets/appBar/tabbar.dart';
import 'package:shoe_app/common/widgets/cart_counter_icon/cart_counter_icon.dart';
import 'package:shoe_app/common/widgets/grid_layout/grid_layout.dart';
import 'package:shoe_app/common/widgets/title_horizontal/title_horizontal.dart';
import 'package:shoe_app/utilities/constants/colors.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import '../../../../common/widgets/brand_card/brand_card.dart';
import '../../../../common/widgets/tabbar_view/tabbar_view.dart';
import '../../../../utilities/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: EAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          action: const [
            ECartCounterIcon(),
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  backgroundColor: EHelperFunctions.isDarkMode(context)
                      ? EColors.blackColor
                      : EColors.whiteColor,
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  elevation: 0,
                  expandedHeight: 400,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: ESizes.defaultSpace),
                    child: ListView(
                      padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(
                            height: ESizes.spaceBetweenItems,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: ETextStrings.searchForProducts,
                              prefixIcon: Icon(Iconsax.search_normal),
                            ),
                          ),
                          const SizedBox(
                            height: ESizes.spaceBetweenSections,
                          ),
                          ETitleHorizontal(
                              title: 'Featured Brands', onTap: () {}),
                          const SizedBox(
                            height: ESizes.spaceBetweenItems,
                          ),
                          EGridLayout(
                              mainAxisExtent: 80,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return EBrandCard(
                                  border: false,
                                  color: EHelperFunctions.isDarkMode(context)
                                      ? EColors.darkContainerColor
                                      : EColors.primaryColor.withOpacity(0.05),
                                );
                              }),
                        ]),
                  ),
                  bottom: const ETabBar(
                    tab: [
                      Tab(
                        text: 'Shoes',
                      ),
                      Tab(
                        text: 'Clothes',
                      ),
                      Tab(
                        text: 'Jewellery',
                      ),
                      Tab(
                        text: 'Perfumes',
                      ),
                      Tab(
                        text: 'Grocerry',
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: const TabBarView(children: [ETabBarView()])),
      ),
    );
  }
}
