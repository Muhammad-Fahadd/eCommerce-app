import 'package:flutter/material.dart';

class EHeading extends StatelessWidget {
  const EHeading({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
