import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/constants/sizes.dart';

class ETile extends StatelessWidget {
  const ETile({
    super.key,
    required this.title,
    required this.icon,
    required this.subTitle,
    this.trailing,
     this.onTap,
  });

  final String title;
  final String subTitle;
  final IconData icon;
  final Widget? trailing;
  final VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: ESizes.md),
      leading: Icon(icon,
        size: 30,),
      title: Text(title,style: Theme.of(context).textTheme.bodyLarge,),
      subtitle: Text(subTitle,style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
    );
  }
}
