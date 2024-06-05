import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final bool isDark = EHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: EAppBar(
        backArrow: true,
        title: const Text('My Orders'),
      ),
      body: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
          itemBuilder: (context , index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: ESizes.defaultSpace,vertical: ESizes.sm),
          child: Container(
            padding: const EdgeInsets.all(ESizes.md),
            decoration: BoxDecoration(
              color: isDark ? EColors.blackColor : EColors.lightContainerColor,
              borderRadius: BorderRadius.circular(ESizes.md),
              border: Border.all(color: EColors.secondaryBorderColor),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          ///Icon
                          const Icon(Iconsax.ship),
                          const SizedBox(width: ESizes.sm,),

                          ///status and date
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Processing',style: Theme.of(context).textTheme.bodyLarge!.apply(color: EColors.primaryColor),),
                              Text('27 May 2024',style: Theme.of(context).textTheme.headlineSmall)
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_right))
                  ],
                ),
                const SizedBox(height: ESizes.spaceBetweenItems,),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          const Icon(Iconsax.tag),
                          const SizedBox(width: ESizes.sm,),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Order',style: Theme.of(context).textTheme.labelMedium,),
                                Text('CWT0019',style: Theme.of(context).textTheme.titleLarge!.apply(color: EColors.darkerGreyColor)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Icon(Iconsax.calendar),
                          const SizedBox(width: ESizes.sm,),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Shipping Date',style: Theme.of(context).textTheme.labelMedium,),
                                Text('02 June 2024',style: Theme.of(context).textTheme.titleLarge!.apply(color: EColors.darkerGreyColor)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                )


              ],
            ),
          ),
        );
      },
      ),
    );
  }
}
