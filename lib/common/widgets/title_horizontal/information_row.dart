import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utilities/constants/sizes.dart';

class EInformationRow extends StatelessWidget {
  const EInformationRow({
    super.key, this.onPressed, required this.title, required this.value,
  });

  final String title , value;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex : 3,child: Text(title,style: Theme.of(context).textTheme.bodySmall,)),
          Expanded(flex : 5,child: Text(value,style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,)),
          IconButton(onPressed: onPressed, icon: const Icon(Iconsax.arrow_right_3,size: ESizes.iconSm,)),
        ]
    );
  }
}
