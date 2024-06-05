import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_app/utilities/routes/routes_name.dart';
import '../../../../../common/widgets/tile/tile.dart';
import '../../../../../common/widgets/title_horizontal/heading.dart';
import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/constants/text_strings.dart';

class EAccountSettings extends StatelessWidget {
  const EAccountSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const EHeading(title: 'Account Settings',),
        const SizedBox(
          height: ESizes.spaceBetweenItems,
        ),
        ETile(
          onTap: (){
            Navigator.pushNamed(context, RoutesName.addressScreen);
          },
          title: ETextStrings.myAddress,
          icon: Iconsax.home_1,
          subTitle: ETextStrings.myAddressSub,
        ),
         ETile(
          title: ETextStrings.myCart,
          icon: Iconsax.shopping_cart,
          subTitle: ETextStrings.myCartSub,
          onTap: (){
            Navigator.pushNamed(context, RoutesName.cartScreen);
          },
        ),
         ETile(
          title: ETextStrings.myOrders,
          icon: Iconsax.bag,
          subTitle: ETextStrings.myOrders,
          onTap: (){
            Navigator.pushNamed(context, RoutesName.orderScreen);
          },
        ),
         ETile(
          title: ETextStrings.bankAccount,
          icon: Iconsax.bank,
          subTitle: ETextStrings.bankAccountSub,
          onTap: (){
            Navigator.pushNamed(context, RoutesName.addressScreen);
          },
        ),
        const ETile(
          title: ETextStrings.myCoupons,
          icon: Iconsax.ticket,
          subTitle: ETextStrings.myCouponsSub,
        ),
        const ETile(
          title: ETextStrings.notifications,
          icon: Iconsax.notification,
          subTitle: ETextStrings.notificationsSub,
        ),
        const ETile(
          title: ETextStrings.accountPrivacy,
          icon: Iconsax.security_safe,
          subTitle: ETextStrings.accountPrivacySub,
        ),
      ],
    );
  }
}

