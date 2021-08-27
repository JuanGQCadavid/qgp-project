import 'package:flutter/material.dart';
import 'package:qgp_main_view/src/features/stories/presentation/story_read.dart';

import 'app_bar.dart';
import 'app_theme.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uy no, que gonorrea',
      theme: appTheme,
      home: Scaffold(
        appBar: appBar,
        backgroundColor: Color(0xFFFAFAFA),
        body: ListView(children: [
          Center(child: StoryReadView()),
          Center(child: StoryReadView()),
          Center(child: StoryReadView()),
          Center(child: StoryReadView())
        ]),
      ),
    );
  }
}
