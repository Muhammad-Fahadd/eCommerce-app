import 'package:flutter/cupertino.dart';
import '../../../utilities/constants/sizes.dart';

class EBanner extends StatelessWidget {
  const EBanner({
    super.key,
    required this.image,
  });

  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ESizes.sm),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ESizes.md),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(ESizes.md),
            child: Image.asset(fit: BoxFit.contain, image)),
      ),
    );
  }
}
