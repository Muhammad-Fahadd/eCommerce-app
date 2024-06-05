import 'package:flutter/cupertino.dart';

import '../../../utilities/constants/sizes.dart';

class EGridLayout extends StatelessWidget {
  const EGridLayout({
    super.key, required this.itemCount,
    this.mainAxisExtent = 288, required this.itemBuilder,
  });

  final int itemCount;
  final double mainAxisExtent;
  final Widget Function(BuildContext ,int ) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: mainAxisExtent,
          mainAxisSpacing: ESizes.gridViewSpacing,
          crossAxisSpacing: ESizes.gridViewSpacing,
        ),
        itemBuilder: itemBuilder,
    );
  }
}


