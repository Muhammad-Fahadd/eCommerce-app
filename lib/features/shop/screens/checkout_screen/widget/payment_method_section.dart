import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/title_horizontal/title_horizontal.dart';
import '../../../../../utilities/constants/images_string.dart';
import '../../../../../utilities/constants/sizes.dart';

class EPaymentMethodSection extends StatelessWidget {
  const EPaymentMethodSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ETitleHorizontal(
            title: 'Payment Method',
            rightTitle: 'change',
            showArrow: false,
            onTap: () {}),
        const SizedBox(
          height: ESizes.spaceBetweenItems,
        ),
        Row(
          children: [
            const SizedBox(
              width: ESizes.spaceBetweenSections,
            ),
            SizedBox(
                height: 20,
                child: Image.asset(EImageString.paypal)),
            const SizedBox(
              width: ESizes.spaceBetweenSections,
            ),
            const Text('Paypal'),
          ],
        ),
      ],
    );
  }
}
