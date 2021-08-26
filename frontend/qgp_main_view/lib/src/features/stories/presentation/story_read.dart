import 'package:flutter/material.dart';
import 'package:qgp_main_view/src/core/painters/comments_divider_painter.dart';

import '../../../../main.dart';

class StoryReadView extends StatelessWidget {
  const StoryReadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFFAFAFA),
      elevation: 20,
      child: Container(
        decoration: BoxDecoration(
            //color: Colors.white,
            //color: Color(0xFFE0E0E0),
            ),
        padding: EdgeInsets.all(50),
        width: 600,
        child: Column(
          children: [
            StoryHeader(),
            SizedBox(
              height: 30,
            ),
            StoryBody(
              data:
                  "Velit dolore commodo non duis sint aliquip magna consectetur veniam cupidatat est consequat quis laboris. Veniam ut irure esse commodo anim laborum est aliqua irure. Nisi culpa reprehenderit ullamco laboris ex aliqua voluptate laborum amet est adipisicing quis velit reprehenderit.Fugiat dolore aliquip duis officia occaecat dolor in quis esse tempor amet. Laborum laborum aute sit amet irure amet. Ea labore commodo eiusmod deserunt veniam nulla do. Nulla consequat qui nisi laborum ex. Officia voluptate cillum id veniam consectetur velit elit eu aliquip tempor elit laboris culpa.Irure dolore nulla laborum eiusmod. Irure amet id excepteur minim. Nostrud dolore do proident do id ullamco deserunt laboris esse. Ex sit occaecat commodo mollit consectetur eu excepteur sunt cupidatat. Pariatur laborum occaecat esse incididunt fugiat.Adipisicing qui dolore sint dolor occaecat aute deserunt. Magna culpa excepteur ex irure qui mollit ea. Officia in id laboris officia occaecat magna id proident eiusmod exercitation. Excepteur duis quis enim velit laboris culpa aliquip esse magna reprehenderit non laboris.Deserunt veniam ullamco proident ut occaecat. Id tempor id dolore ut magna est exercitation non officia aliqua deserunt. Id occaecat velit consectetur reprehenderit eu labore qui aliqua ipsum ullamco consequat irure labore. Quis veniam et ipsum ex fugiat nulla deserunt qui consequat. Amet irure proident mollit pariatur adipisicing et sit officia consectetur incididunt nulla tempor dolore.",
            ),
            SizedBox(
              height: 30,
            ),
            //SotryReaction(),
            StoryComment(),
            //StoryComments()
          ],
        ),
      ),
    );
  }
}

class StoryComments extends StatelessWidget {
  const StoryComments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: ListView(
        children: [Comment(), Comment(), Comment()],
      )),
    );
  }
}

class Comment extends StatelessWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              children: [
                UserPhoto(
                  size: 50,
                  imageProvider: NetworkImage(
                    'https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=150&w=150',
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 10), child: Text("USER NAME"))
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          StoryBody(
            displayLeftDivider: true,
            data:
                "Est veniam cupidatat pariatur elit velit consequat enim nostrud culpa minim elit. Ex qui amet ut exercitation non. Nostrud amet in irure voluptate dolor non. Aliquip tempor tempor enim proident fugiat quis veniam consequat sunt officia ipsum ullamco culpa.Duis exercitation est mollit ea aute laboris. Mollit non velit tempor in culpa. Qui aliqua et voluptate voluptate fugiat Lorem Lorem reprehenderit nisi laborum incididunt sunt in",
          )
        ],
      ),
    );
  }
}

class StoryComment extends StatelessWidget {
  const StoryComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Color(0xFFD7D7D7)),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              expands: false,
              minLines: 1,
              maxLines: 5,
            ),
          ),
          Container(
            child: Icon(Icons.done),
            margin: EdgeInsets.symmetric(horizontal: 10),
          )
        ],
      ),
    );
  }
}

class SotryReaction extends StatelessWidget {
  const SotryReaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Reaction extends StatelessWidget {
  const Reaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class StoryBody extends StatelessWidget {
  final data;
  final bool displayLeftDivider;

  const StoryBody({
    required this.data,
    this.displayLeftDivider = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: Row(
        children: [
          if (displayLeftDivider)
            Container(
              height: 50,
              width: 50,
              child: LayoutBuilder(
                builder: (context, constrans) {
                  return CustomPaint(
                    painter: MyPainter(),
                    size: MediaQuery.of(context).size,
                  );
                },
              ),
            ),
          Expanded(
            child: Text(
              data,
            ),
          ),
        ],
      ),
    );
  }
}

class StoryHeader extends StatelessWidget {
  const StoryHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          UserPhoto(
            size: 100,
            imageProvider: NetworkImage(
              'https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=150&w=150',
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "TITLE -> What a Oweful experience at sadSADASdASDasdASD!",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Row(
                    children: [
                      Text("By "),
                      TextButton(onPressed: () {}, child: Text("Don Chalo"))
                    ],
                  )
                ],
              ),
            ),
          )
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

/*
  NetworkImage(
            'https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=150&w=150',
          )
*/