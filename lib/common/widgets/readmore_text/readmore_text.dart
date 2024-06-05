import 'package:flutter/cupertino.dart';
import 'package:readmore/readmore.dart';
import 'package:shoe_app/utilities/constants/colors.dart';

class EReadMoreText extends StatelessWidget {
  const EReadMoreText({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
        text,
      trimLines: 2,
      trimMode: TrimMode.Line,
      lessStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: EColors.primaryColor),
      moreStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: EColors.primaryColor),
    );
  }
}