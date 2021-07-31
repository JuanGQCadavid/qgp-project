import 'package:flutter/material.dart';
import 'package:qgp_main_view/src/features/stories/presentation/story_read.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uy no, que gonorrea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(child: StoryReadView()),
      ),
    );
  }
}
