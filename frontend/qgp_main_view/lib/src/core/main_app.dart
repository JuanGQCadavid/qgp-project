import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qgp_main_view/src/features/stories/presentation/story_read.dart';

import 'app_bar.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uy no, que gonorrea',
      theme: ThemeData(
        textTheme: GoogleFonts.notoSansTextTheme(),
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Color(0xFF1aa96e)),
          textTheme: GoogleFonts.notoSansTextTheme().copyWith(
            title: GoogleFonts.notoSansTextTheme().title!.copyWith(
                color: Color(0xFF1aa96e),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFFAFAFA),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text("Uy no, que gonorrea llave..."),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
              child: MainCTA(
                ctaName: 'Crear historia',
                onTap: () {},
              ),
            ),
            IconButton(
              padding: EdgeInsets.symmetric(horizontal: 30),
              onPressed: () {},
              icon: Icon(Icons.filter_list),
              tooltip: "Filtrar historias",
            ),
            IconButton(
              padding: EdgeInsets.symmetric(horizontal: 30),
              onPressed: () {},
              icon: Icon(Icons.account_circle),
              tooltip: "Mi cuenta",
            )
          ],
        ),
        backgroundColor: Color(0xFFFAFAFA),
        body: Center(child: StoryReadView()),
      ),
    );
  }
}

class MainCTA extends StatelessWidget {
  const MainCTA({
    Key? key,
    required this.ctaName,
    required this.onTap,
  }) : super(key: key);

  final String ctaName;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.only(
        bottomRight: Radius.circular(25),
        topRight: Radius.circular(25),
        //bottomLeft: Radius.circular(25),
        topLeft: Radius.circular(25));

    return InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            //border: Border.all(color: Color(0xFF1aa96e)),
            color: Color(0xFF1aa96e),
            borderRadius: borderRadius,
          ),
          child: Center(
            child: Text(
              ctaName,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.white),
            ),
          ),
        ));
  }
}
