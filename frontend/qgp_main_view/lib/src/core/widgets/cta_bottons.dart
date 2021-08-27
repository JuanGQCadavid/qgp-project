import 'package:flutter/material.dart';

class MainCTA extends StatelessWidget {
  const MainCTA({
    Key? key,
    required this.ctaName,
    required this.onTap,
    this.topCorner = false,
    this.bottomCorner = true,
  }) : super(key: key);

  final String ctaName;
  final Function() onTap;
  final bool topCorner;
  final bool bottomCorner;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.only(
      bottomRight: Radius.circular(25),
      topRight: Radius.circular(25),
      bottomLeft: bottomCorner ? Radius.zero : Radius.circular(25),
      topLeft: topCorner ? Radius.zero : Radius.circular(25),
    );

    return InkWell(
        borderRadius: borderRadius,
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
