
import 'package:flutter/material.dart';
import 'package:shoe_app/utilities/helpers/helper_functions.dart';

import '../../../utilities/constants/colors.dart';


class EChips extends StatelessWidget {
  const EChips({
    super.key,
    required this.selected,
    required this.text,
    required this.onSelected,
  });

  final bool selected;
  final String text;
  final void Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = EHelperFunctions.getColor(text) != null;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() :  Text(text),
        selected: selected,
        onSelected: onSelected,
        selectedColor: isColor ? Colors.transparent : null,
        labelStyle: TextStyle(color: selected ? EColors.whiteColor : null),
        padding: isColor ? EdgeInsets.zero : null,
        shape: isColor ?  const CircleBorder() : null,
        labelPadding: isColor ? EdgeInsets.zero : null,
        backgroundColor: isColor ? EHelperFunctions.getColor(text) : null,
        avatar: isColor
            ? Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: EHelperFunctions.getColor(text),
                    shape: BoxShape.circle),
              )
            : null,

      ),
    );
  }
}
