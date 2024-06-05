import 'package:flutter/material.dart';
import 'package:shoe_app/common/widgets/appBar/appbar.dart';
import 'package:shoe_app/common/widgets/title_horizontal/heading.dart';
import 'package:shoe_app/utilities/constants/images_string.dart';
import 'package:shoe_app/utilities/constants/text_strings.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

import '../../../../common/widgets/title_horizontal/information_row.dart';
import '../../../../utilities/constants/sizes.dart';

class ProfileSettingScreen extends StatelessWidget {
  const ProfileSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        backArrow: true,
        title: Text(
          ETextStrings.profile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              ///Profile
              const SizedBox(
                height: ESizes.spaceBetweenItems,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(EImageString.userProfileImage2),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(ETextStrings.changeProfilePic)),
              const SizedBox(height: ESizes.spaceBetweenSections,),


              const Divider(),
              const SizedBox(height: ESizes.spaceBetweenSections,),

              ///Profile Information
               Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const EHeading(title: 'Profile Information'),
                    const SizedBox(height: ESizes.spaceBetweenItems,),
                    EInformationRow(onPressed: () {}, title: ETextStrings.name, value: ETextStrings.homeAppbarSubTitle,),
                    EInformationRow(onPressed: () {}, title: ETextStrings.username, value: ETextStrings.homeAppbarSubTitle,),
                  ]
              ),


              const Divider(),
              const SizedBox(height: ESizes.spaceBetweenSections,),

              ///Personal Information
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const EHeading(title: 'Personal Information'),
                    const SizedBox(height: ESizes.spaceBetweenItems,),
                    EInformationRow(onPressed: () {}, title: ETextStrings.userId, value: ETextStrings.number,),
                    EInformationRow(onPressed: () {}, title: ETextStrings.email, value: ETextStrings.dummyEmail,),
                    EInformationRow(onPressed: () {}, title: ETextStrings.phoneNo, value: ETextStrings.phoneNum,),
                    EInformationRow(onPressed: () {}, title: ETextStrings.gender, value: ETextStrings.male,),
                    EInformationRow(onPressed: () {}, title: ETextStrings.dateOfBirth, value: ETextStrings.dateOfBirthVal,),
                  ]
              ),

              const Divider(),
              const SizedBox(height: ESizes.spaceBetweenSections,),

              SizedBox(
                width: EHelperFunctions.getScreenWidth(context),
                child: OutlinedButton(onPressed: (){}, child: const Text(ETextStrings.closeAccount)),)

            ],
          ),
        ),
      ),
    );
  }
}

