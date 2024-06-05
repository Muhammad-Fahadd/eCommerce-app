import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/utilities/constants/sizes.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        backArrow: true,
        title: const Text('Add new Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      label: Text(ETextStrings.name),
                    ),
                  ),
                  const SizedBox(
                    height: ESizes.spaceBetweenItems,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      label: Text(ETextStrings.phoneNo),
                    ),
                  ),
                  const SizedBox(
                    height: ESizes.spaceBetweenItems,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.code_1),
                            label: Text('Postal Code'),
                          ),
                        ),
                      ),

                      const SizedBox(width: ESizes.spaceBetweenItems),

                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.location4),
                            label: Text('Street'),
                          ),
                        ),
                      ),
                    ],
                  ),

                      const SizedBox(height: ESizes.spaceBetweenItems),

                   TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      label: Text(ETextStrings.phoneNo),
                    ),
                  ),

                   const SizedBox(height: ESizes.spaceBetweenItems),

                   TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.location),
                      label: Text(ETextStrings.address),
                    ),
                  ),

                   const SizedBox(height: ESizes.spaceBetweenSections),

                   SizedBox(
                    width: EHelperFunctions.getScreenWidth(context),
                     child: ElevatedButton(
                      onPressed: (){},
                       child: const Text('Submit')
                       ),
                   ),


                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
