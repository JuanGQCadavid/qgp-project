import 'package:flutter/material.dart';
import 'package:qgp_v8/core/landing_view.dart';
import 'package:qgp_v8/core/theme.dart';

import './theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Que gonorrea...",
      theme: appTheme,
      home: LandingPage(),
    );
  }
}
