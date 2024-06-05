import 'package:flutter/material.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/constants/sizes.dart';

class ECouponField extends StatelessWidget {
  const ECouponField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ESizes.sm),
      decoration: BoxDecoration(
          border: Border.all(color: EColors.greyColor),
          borderRadius: BorderRadius.circular(ESizes.md)
      ),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                enabledBorder: InputBorder.none,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                hintText: 'Have a promo code? Enter here!',
              ),
            ),
          ),
          SizedBox(
              width: 80,
              child: ElevatedButton(onPressed: (){}, child: const Text('Apply')))
        ],
      ),
    );
  }
}
