import 'package:flutter/material.dart';

class StoryBody extends StatelessWidget {
  final String data;
  final bool displayLeftDivider;
  final int maxLines;

  const StoryBody({
    required this.data,
    this.displayLeftDivider = false,
    this.maxLines = 4,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.justify,
    );
  }
}
