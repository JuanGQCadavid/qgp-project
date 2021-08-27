import 'package:flutter/material.dart';

import '../app_theme.dart';

class TextHighlighted extends StatelessWidget {
  final String boddyText;
  final IconData? icon;
  const TextHighlighted({
    Key? key,
    required this.boddyText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: globalColor,
        width: 2,
      ))),
      child: Row(
        children: [
          Text(boddyText),
          if (icon != null)
            SizedBox(
              width: 10,
            ),
          if (icon != null)
            Icon(
              icon,
              color: globalColor,
            )
        ],
      ),
    );
  }
}
