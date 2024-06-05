import 'package:flutter/material.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/features/shop/screens/shopping_cart/widget/cart_items.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';
import '../../../../utilities/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        backArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(ESizes.defaultSpace),
        child: ECartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, RoutesName.checkoutScreen);
          },
          child: const Text('Checkout \$244'),
        ),
      ),
    );
  }
}

