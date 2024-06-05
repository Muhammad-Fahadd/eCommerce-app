import 'package:flutter/material.dart';
import 'package:shoe_app/common/widgets/readmore_text/readmore_text.dart';
import 'package:shoe_app/features/shop/screens/review_screen/widgets/star_rating_indicator.dart';
import 'package:shoe_app/utilities/constants/colors.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';
import 'package:shoe_app/utilities/constants/sizes.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';

class EUserReview extends StatelessWidget {
  const EUserReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(EImageString.userProfileImage2),
                ),
                const SizedBox(
                  width: ESizes.spaceBetweenItems,
                ),
                Text(
                  'Muhammad Fahad',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBetweenItems,
        ),
        Row(
          children: [
            const EStarRatnigIndicator(
              rating: 3.5,
            ),
            const SizedBox(
              width: ESizes.spaceBetweenItems,
            ),
            Text(
              '02 Jan 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBetweenItems,
        ),
        const EReadMoreText(text: ETextStrings.confirmEmailSubTitle),
        const SizedBox(
          height: ESizes.spaceBetweenItems,
        ),
        Container(
          padding: const EdgeInsets.all(ESizes.md),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ESizes.md),
            color: EColors.greyColor,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'E-Store',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    '5 May, 2024',
                    style: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
              const SizedBox(
                height: ESizes.spaceBetweenItems,
              ),
              const EReadMoreText(text: ETextStrings.confirmEmailSubTitle),
            ],
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBetweenSections,
        ),
      ],
    );
  }
}
