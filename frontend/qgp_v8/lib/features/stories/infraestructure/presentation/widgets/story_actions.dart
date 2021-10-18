import 'package:flutter/material.dart';
import 'package:qgp_v8/core/widgets/main_cta.dart';
import 'package:qgp_v8/core/widgets/text_highlighted.dart';

class StoryActions extends StatelessWidget {
  final int commentsCounter;
  const StoryActions({Key? key, required this.commentsCounter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextHighlighted(
            boddyText: '$commentsCounter Comentarios',
            icon: Icons.chat_bubble_outline,
          ),
          const SizedBox(
            width: 20,
          ),
          MainCTA(
            ctaName: 'Leer mas',
            onTap: () {},
            topCorner: true,
            bottomCorner: false,
          )
        ],
      ),
    );
  }
}
