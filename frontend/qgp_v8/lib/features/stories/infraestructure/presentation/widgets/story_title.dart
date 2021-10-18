import 'package:flutter/material.dart';

class StoryTitle extends StatelessWidget {
  final String title;

  const StoryTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    ));
  }
}
