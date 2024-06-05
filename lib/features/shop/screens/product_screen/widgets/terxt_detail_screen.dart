import 'package:flutter/material.dart';

class ETextDetailScreen extends StatelessWidget {
  const ETextDetailScreen({
    super.key, required this.title, required this.value,
  });

  final String title , value;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
            children: [
              TextSpan( text: title,style: Theme.of(context).textTheme.labelMedium),
              TextSpan( text: value,style: Theme.of(context).textTheme.bodyLarge),
            ]
        )
    );
  }
}
