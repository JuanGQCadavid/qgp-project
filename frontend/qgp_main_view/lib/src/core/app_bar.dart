import 'package:flutter/material.dart';
import 'package:qgp_main_view/src/core/widgets/cta_bottons.dart';

final appBar = AppBar(
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
);
