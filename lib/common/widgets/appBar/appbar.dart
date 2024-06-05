import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/device/device_utility.dart';

import '../../../utilities/constants/sizes.dart';

class EAppBar extends StatelessWidget implements PreferredSizeWidget {
   EAppBar({
     super.key,
   this.backArrow = false,
     this.title,
     this.action,
     this.leading,
     this.color = Colors.transparent,
   });

  Widget? title ;
  List<Widget>? action;
  Widget? leading;
  bool backArrow;
  final Color? color;

  @override
  Widget build(BuildContext context) {

    return  Material(
      color: color,
      child: Padding(
        padding:  const EdgeInsets.symmetric(horizontal: ESizes.md),
        child: AppBar(
          automaticallyImplyLeading: backArrow,
          title: title,
          actions: action,
          leading: leading,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(EDeviceUtility.getAppBarHeight());
}
