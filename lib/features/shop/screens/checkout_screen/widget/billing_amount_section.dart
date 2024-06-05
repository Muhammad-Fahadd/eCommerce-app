import 'package:flutter/material.dart';
import '../../../../../utilities/constants/sizes.dart';

class EBillingAmountSection extends StatelessWidget {
  const EBillingAmountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('sub total'),
            Text('\$555.0'),
          ],
        ),
        const SizedBox(
          height: ESizes.sm,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('shipping fee'),
            Text('\$5.00'),
          ],
        ),
        const SizedBox(
          height: ESizes.sm,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('tax fee'),
            Text('\$10'),
          ],
        ),
        const SizedBox(
          height: ESizes.md,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'sub total',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              '\$585',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBetweenItems,
        ),
      ],
    );
  }
}
