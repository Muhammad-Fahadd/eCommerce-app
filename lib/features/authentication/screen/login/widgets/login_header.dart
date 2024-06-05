import 'package:flutter/material.dart';

import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/constants/text_strings.dart';

class ELoginheader extends StatelessWidget {
  const ELoginheader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(ETextStrings.logIn,style: Theme.of(context).textTheme.headlineLarge!.apply(color: EColors.primaryColor),),
        const SizedBox(height: ESizes.sm,),
        Text(ETextStrings.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}
