import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/features/personalization/screens/adress_screen/widgets/adress_card.dart';
import 'package:shoe_app/utilities/constants/colors.dart';
import 'package:shoe_app/utilities/constants/sizes.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: EColors.primaryColor,
        onPressed: (){
          Navigator.pushNamed(context, RoutesName.addNewAddressScreen);
        },
        child: const Icon(Iconsax.add,color: EColors.whiteColor,),),
      appBar: EAppBar(
        backArrow: true,
        title: const Text('Addresses'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              EAdressCard(
                isSelected: false,
                name: 'Muhammad Fahad',
               number: '0312-2747408',
               address: 'House no: B-78 sector 11-A North Karachi, karachi',),

               EAdressCard(
                isSelected: true,
                name: 'Muhammad Fahad',
               number: '0312-2747408',
               address: 'House no: B-78 sector 11-A North Karachi, karachi',),

                EAdressCard(
                isSelected: false,
                name: 'Muhammad Fahad',
               number: '0312-2747408',
               address: 'House no: B-78 sector 11-A North Karachi, karachi',),
             
            ],
          ),
        ),
      ),
    );
  }
}

