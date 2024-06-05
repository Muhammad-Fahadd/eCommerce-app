import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utilities/constants/sizes.dart';

class ERatingAndShare extends StatelessWidget {
  const ERatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Icon(Iconsax.star5,color: Colors.amber,),
            SizedBox(width: ESizes.sm,),
            Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: '5.0'),
                      TextSpan(text: '(144)'),
                    ]
                )
            )
          ],
        ),
        IconButton(onPressed: (){}, icon:const Icon(Icons.share))
      ],
    );
  }
}
