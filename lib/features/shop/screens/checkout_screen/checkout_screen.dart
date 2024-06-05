import 'package:flutter/material.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/common/widgets/success_screen/success_screen.dart';
import 'package:shoe_app/common/widgets/title_horizontal/title_horizontal.dart';
import 'package:shoe_app/features/shop/screens/checkout_screen/widget/billing_amount_section.dart';
import 'package:shoe_app/features/shop/screens/checkout_screen/widget/payment_method_section.dart';
import 'package:shoe_app/features/shop/screens/checkout_screen/widget/shipping_address_section.dart';
import 'package:shoe_app/features/shop/screens/shopping_cart/widget/cart_items.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';
import 'package:shoe_app/utilities/constants/sizes.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';
import '../../../../common/widgets/cart/coupon_field.dart';
import '../../../../utilities/constants/colors.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessScreen(
                    onPressed: (){
                      Navigator.pushNamed(context, RoutesName.navigationMenuScreen);
                    },
                    image: EImageString.successIcon,
                    subtitle: 'Your items will be shipped soon',
                    title: 'Payment Success!')));
              },
              child: const Text('CheckOut \$585'))),
      appBar: EAppBar(
        backArrow: true,
        title: const Text('Order Review'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              const ECartItems(
                showAddOrRemoveButton: false,
              ),
              const SizedBox(
                height: ESizes.spaceBetweenSections,
              ),
              const ECouponField(),
              const SizedBox(
                height: ESizes.spaceBetweenSections,
              ),
              Container(
                padding: const EdgeInsets.all(ESizes.md),
                decoration: BoxDecoration(
                    border: Border.all(color: EColors.greyColor),
                    borderRadius: BorderRadius.circular(ESizes.md)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///Pricing section
                    const EBillingAmountSection(),

                    const Divider(),
                    const SizedBox(
                      height: ESizes.spaceBetweenItems,
                    ),

                    ///Payment method section
                    const EPaymentMethodSection(),

                    const SizedBox(
                      height: ESizes.spaceBetweenSections * 1.5,
                    ),


                    ETitleHorizontal(
                        title: 'Shipping Address',
                        rightTitle: 'change',
                        showArrow: false,
                        onTap: () {}),

                    const SizedBox(
                      height: ESizes.spaceBetweenItems,
                    ),

                    const EShippingAddressSection()
                  ],
                ),
              ),
              const SizedBox(height: ESizes.spaceBetweenSections)
            ],
          ),
        ),
      ),
    );
  }
}



