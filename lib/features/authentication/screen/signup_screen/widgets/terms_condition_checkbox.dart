import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_app/features/authentication/controller/onboarding_controller/signup_controller.dart';
import 'package:shoe_app/utilities/constants/sizes.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/text_strings.dart';

class TermsConditionCheckBox extends StatelessWidget {
  const TermsConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final bool isDark = EHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
                ()=> Checkbox(
                    value: controller.privacyPolicy.value,
                    onChanged: (value) =>
                        controller.privacyPolicy.value = !controller.privacyPolicy.value),
          ),
        ),
        const SizedBox(
          width: ESizes.sm,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${ETextStrings.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${ETextStrings.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: isDark ? EColors.whiteColor : EColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        isDark ? EColors.whiteColor : EColors.primaryColor,
                  )),
          TextSpan(
              text: '${ETextStrings.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${ETextStrings.termsOfUse} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: isDark ? EColors.whiteColor : EColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        isDark ? EColors.whiteColor : EColors.primaryColor,
                  )),
        ]))
      ],
    );
  }
}
