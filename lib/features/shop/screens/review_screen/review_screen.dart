import 'package:flutter/material.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/features/shop/screens/review_screen/widgets/overall_rating.dart';
import 'package:shoe_app/features/shop/screens/review_screen/widgets/star_rating_indicator.dart';
import 'package:shoe_app/features/shop/screens/review_screen/widgets/user_review.dart';
import 'package:shoe_app/utilities/constants/sizes.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Appbar
      appBar: EAppBar(
        backArrow: true,
        title: const Text('Reviews & Ratings'),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
              const SizedBox(
                height: ESizes.spaceBetweenItems,
              ),

              ///Overall rating
              const EOverAllRating(),
              const EStarRatnigIndicator(
                rating: 4.1,
              ),
              Text(
                '12,225',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: ESizes.spaceBetweenSections,
              ),

/// User Review
              const EUserReview(),
              const EUserReview(),
             const EUserReview(),

              
            ],
          ),
        ),
      ),
    );
  }
}


