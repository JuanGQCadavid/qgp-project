import 'package:flutter/material.dart';
import 'package:qgp_v8/core/widgets/user_photo.dart';

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
