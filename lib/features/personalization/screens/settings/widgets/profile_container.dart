import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utilities/constants/colors.dart';
import '../../../../../utilities/constants/images_string.dart';
import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/constants/text_strings.dart';
import '../../../../../utilities/routes/routes_name.dart';

class EProfileContainer extends StatelessWidget {
  const EProfileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: EColors.primaryColor,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(ESizes.lg),
              bottomLeft: Radius.circular(ESizes.lg))),
      child: ListTile(
        horizontalTitleGap: 0,
        leading: const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(EImageString.userProfileImage2),
        ),
        title: Text(
          ETextStrings.homeAppbarSubTitle,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: EColors.whiteColor),
        ),
        subtitle: Text(ETextStrings.dummyEmail,
            style: Theme.of(context).textTheme.labelLarge!.apply(color: EColors.whiteColor)
        ),
        trailing: IconButton(onPressed: (){
          Navigator.pushNamed(context, RoutesName.profileSettingScreen);
        }, icon: const Icon(Iconsax.edit,color: EColors.whiteColor,)),
      ),
    );
  }
}
