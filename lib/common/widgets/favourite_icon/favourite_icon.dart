import 'package:flutter/material.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';

class EFavouriteIcon extends StatelessWidget {
  const EFavouriteIcon({
    super.key, this.onTap, required this.icon,  this.background = true,
  });

  final VoidCallback? onTap;
  final IconData icon;
  final bool? background;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(ESizes.sm),
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: background! ? EColors.whiteColor : null,
        ),
        child:  Center(child: Icon(icon,size: ESizes.lg,color: EColors.redColor,)),
      ),
    );
  }
}
