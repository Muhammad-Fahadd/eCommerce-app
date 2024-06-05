import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/common/widgets/title_horizontal/heading.dart';
import '../../../../../common/widgets/tile/tile.dart';
import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/constants/text_strings.dart';

class EAppSettings extends StatelessWidget {
  const EAppSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const EHeading(title: 'App Settings'),
        const SizedBox(
          height: ESizes.spaceBetweenItems,
        ),
        const ETile(
          title: ETextStrings.loadData,
          icon: Iconsax.document_upload,
          subTitle: ETextStrings.loadDataSub,
        ),
        ETile(
          title: ETextStrings.geolocation,
          icon: Iconsax.location,
          subTitle: ETextStrings.geolocationSub,
          trailing: Switch(value: false, onChanged: (value){}),
        ),
        ETile(
          title: ETextStrings.safeMode,
          icon: Iconsax.safe_home,
          subTitle: ETextStrings.safeModeSub,
          trailing: Switch(value: true, onChanged: (value){}),
        ),
        ETile(
          title: ETextStrings.hdImageQuality,
          icon: Iconsax.image,
          subTitle: ETextStrings.hdImageQualitySub,
          trailing: Switch(value: false, onChanged: (value){}),
        ),
      ],
    );
  }
}
