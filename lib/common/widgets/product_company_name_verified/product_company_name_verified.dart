import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/enums.dart';
import '../../../utilities/constants/sizes.dart';

class EProductCompanyNameVerified extends StatelessWidget {
  const EProductCompanyNameVerified({
    super.key, required this.companyName,  required this.titleSize,
  });

  final String companyName;
  final TextSizes titleSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          companyName,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          style: titleSize == TextSizes.small
              ? Theme.of(context).textTheme.labelMedium
              : titleSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge
              : titleSize == TextSizes.large
              ? Theme.of(context).textTheme.titleLarge
              : Theme.of(context).textTheme.bodyMedium
        ),
        const SizedBox(width: ESizes.sm / 2,),
        const Icon(Iconsax.verify5,color: EColors.primaryButtonColor,size: ESizes.md,)
      ],
    );
  }
}
