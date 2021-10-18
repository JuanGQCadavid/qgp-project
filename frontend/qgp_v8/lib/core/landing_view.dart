import 'package:flutter/material.dart';
import 'package:qgp_v8/core/app_bar.dart';
import 'package:qgp_v8/features/stories/infraestructure/presentation/story_preview.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar,
        backgroundColor: const Color(0xFFFAFAFA),
        body: ListView(children: [
          const Center(child: StoryReadView()),
          const SizedBox(
            height: 10,
          ),
          const Center(child: StoryReadView()),
          const SizedBox(
            height: 10,
          ),
          const Center(child: StoryReadView()),
          const SizedBox(
            height: 10,
          ),
          const Center(child: StoryReadView()),
          const SizedBox(
            height: 10,
          ),
        ]));
  }
}
