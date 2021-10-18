import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  final double size;
  final ImageProvider imageProvider;

  const UserPhoto({
    required this.size,
    required this.imageProvider,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: imageProvider,
        ),
      ),
    );
  }
}
