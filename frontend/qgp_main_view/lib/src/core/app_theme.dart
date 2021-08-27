import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final globalColor = Color(0xFF1aa96e);

final appTheme = ThemeData(
  textTheme: GoogleFonts.notoSansTextTheme(),
  primarySwatch: Colors.blue,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: globalColor),
    textTheme: GoogleFonts.notoSansTextTheme().copyWith(
      title: GoogleFonts.notoSansTextTheme().title!.copyWith(
          color: Color(0xFF1aa96e), fontSize: 20, fontWeight: FontWeight.bold),
    ),
  ),
);
