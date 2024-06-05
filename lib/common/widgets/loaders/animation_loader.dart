import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';

class EAnimationLoader extends StatelessWidget {
  const EAnimationLoader(
      {super.key,
      required this.text,
      required this.animation,
      this.showAction = false,
      this.actionText,
      this.onPressed});

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Lottie.asset(
            animation,
            width: EHelperFunctions.getScreenWidth(context) * 0.8,
          ),
          const SizedBox(
            height: ESizes.defaultSpace,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: ESizes.defaultSpace,
          ),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                      onPressed: onPressed,
                      style: OutlinedButton.styleFrom(
                          backgroundColor: EColors.blackColor),
                      child: (Text(
                        actionText!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: EColors.whiteColor),
                      ))),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
