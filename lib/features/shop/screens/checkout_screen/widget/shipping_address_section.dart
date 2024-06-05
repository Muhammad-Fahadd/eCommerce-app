import 'package:flutter/material.dart';

import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/sizes.dart';

class EShippingAddressSection extends StatelessWidget {
  const EShippingAddressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Muhammad Fahad'),
        SizedBox(
          height: ESizes.sm,
        ),
        Row(
          children: [
            Icon(
              Icons.call,
              color: EColors.darkGreyColor,
              size: 18,
            ),
            SizedBox(
              width: ESizes.spaceBetweenItems,
            ),
            Text('0312-2747408')
          ],
        ),
        SizedBox(
          height: ESizes.sm,
        ),
        Row(
          children: [
            Icon(
              Icons.location_pin,
              color: EColors.darkGreyColor,
              size: 18,
            ),
            SizedBox(
              width: ESizes.spaceBetweenItems,
            ),
            Expanded(
              child: Text(
                'House no-B-78 sector 11-A north karachi , karachi',
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
