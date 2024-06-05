import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/utilities/constants/colors.dart';

class EStarRatnigIndicator extends StatelessWidget {
  const EStarRatnigIndicator({
    super.key, required this.rating,
  });

  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      itemSize: 20,
      unratedColor: EColors.greyColor,
      itemBuilder: (context, index) => const Icon(
        Iconsax.star1,
        color: Colors.amber,
      ),
    );
  }
}