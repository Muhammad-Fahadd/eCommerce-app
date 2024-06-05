import 'package:flutter/material.dart';

class EProductTitleText extends StatelessWidget {
  const EProductTitleText({
    super.key, required this.title,  this.maxLine = 2,
  });

  final String title;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: Theme.of(context).textTheme.labelLarge,
      textAlign: TextAlign.left,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
    );
  }
}
