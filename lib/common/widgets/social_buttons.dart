import 'package:flutter/material.dart';

import '../../utilities/constants/images_string.dart';
import '../../utilities/constants/sizes.dart';

class ESocialButtons extends StatelessWidget {
  const ESocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                style: OutlinedButton.styleFrom(shape: const CircleBorder()),
                onPressed: (){}, child: Image.asset(
                height: ESizes.iconLg,
                EImageString.googleLogo)),
            const SizedBox(width: ESizes.spaceBetweenItems,),
            OutlinedButton(
                style: OutlinedButton.styleFrom(shape: const CircleBorder()),
                onPressed: (){}, child: Image.asset(
                height: ESizes.iconLg,
                EImageString.facebookLogo)),

          ],
        ),
      ],
    );
  }
}
