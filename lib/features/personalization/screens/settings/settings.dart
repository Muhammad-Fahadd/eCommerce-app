import 'package:flutter/material.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/features/personalization/screens/settings/widgets/account_settings.dart';
import 'package:shoe_app/features/personalization/screens/settings/widgets/app_settings.dart';
import 'package:shoe_app/features/personalization/screens/settings/widgets/profile_container.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';
import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        color: EColors.primaryColor,
        title: Text(
          'Account',
          style: Theme.of(context).textTheme.headlineMedium!.apply(color: EColors.whiteColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const EProfileContainer(),
            const SizedBox(
              height: ESizes.spaceBetweenItems,
            ),
            Padding(
              padding:  const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///account settings
                 const EAccountSettings(),

                  const SizedBox(
                    height: ESizes.spaceBetweenItems * 2,
                  ),

                  ///App settings
                const EAppSettings(),

                  const SizedBox(
                    height: ESizes.spaceBetweenSections,
                  ),

                  ///Button
                  SizedBox(
                      width: EHelperFunctions.getScreenWidth(context),
                      child: OutlinedButton(onPressed: (){}, child: const Text(ETextStrings.logOut)))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



