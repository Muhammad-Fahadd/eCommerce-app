import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/device/device_utility.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

import '../../../utilities/constants/colors.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  const ETabBar({
    required this.tab,
    super.key,
  });

  final List<Widget> tab;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: EHelperFunctions.isDarkMode(context) ? EColors.blackColor : EColors.whiteColor,
      child: TabBar(
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          tabs: tab),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(EDeviceUtility.getAppBarHeight());
}
