import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/constants/colors.dart';
import 'package:shoe_app/utilities/constants/sizes.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

class ERatingIndicator extends StatelessWidget {
  const ERatingIndicator({
    super.key, required this.text, required this.value,
  });

final String text;
final double value;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(
        flex: 1,
        child: Text(text,style: Theme.of(context).textTheme.bodyMedium,)),
    Expanded(
      flex: 11,
      child: SizedBox(
        width: EHelperFunctions.getScreenWidth(context)*0.6,
        child: LinearProgressIndicator(
          value: value,
          borderRadius: BorderRadius.circular(ESizes.md),
          backgroundColor: EColors.greyColor,
          minHeight: 10,
          valueColor: const AlwaysStoppedAnimation(EColors.primaryColor),
        ),
      ),
    )
    ],);
  }
}