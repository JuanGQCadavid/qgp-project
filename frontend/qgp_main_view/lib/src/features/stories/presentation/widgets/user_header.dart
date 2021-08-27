import 'package:flutter/material.dart';

class StoryHeader extends StatelessWidget {
  final String userPhotoLink;
  final String userName;
  final String date;

  const StoryHeader(
      {Key? key,
      required this.userPhotoLink,
      required this.userName,
      required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          UserPhoto(
            size: 40,
            imageProvider: NetworkImage(userPhotoLink),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userName),
                  Text(date),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
