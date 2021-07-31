import 'package:flutter/material.dart';

class StoryReadView extends StatelessWidget {
  const StoryReadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      padding: EdgeInsets.all(50),
      width: 600,
      child: Column(
        children: [
          StoryHeader(),
          SizedBox(
            height: 30,
          ),
          StoryBody(),
          SizedBox(
            height: 30,
          ),
          SotryReaction(),
          StoryComment()
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
      child: Row(
        children: [
          Expanded(
            child: TextField(
              expands: false,
              minLines: 1,
              maxLines: 5,
            ),
          ),
          Icon(Icons.done)
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
  const StoryBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Velit dolore commodo non duis sint aliquip magna consectetur veniam cupidatat est consequat quis laboris. Veniam ut irure esse commodo anim laborum est aliqua irure. Nisi culpa reprehenderit ullamco laboris ex aliqua voluptate laborum amet est adipisicing quis velit reprehenderit.Fugiat dolore aliquip duis officia occaecat dolor in quis esse tempor amet. Laborum laborum aute sit amet irure amet. Ea labore commodo eiusmod deserunt veniam nulla do. Nulla consequat qui nisi laborum ex. Officia voluptate cillum id veniam consectetur velit elit eu aliquip tempor elit laboris culpa.Irure dolore nulla laborum eiusmod. Irure amet id excepteur minim. Nostrud dolore do proident do id ullamco deserunt laboris esse. Ex sit occaecat commodo mollit consectetur eu excepteur sunt cupidatat. Pariatur laborum occaecat esse incididunt fugiat.Adipisicing qui dolore sint dolor occaecat aute deserunt. Magna culpa excepteur ex irure qui mollit ea. Officia in id laboris officia occaecat magna id proident eiusmod exercitation. Excepteur duis quis enim velit laboris culpa aliquip esse magna reprehenderit non laboris.Deserunt veniam ullamco proident ut occaecat. Id tempor id dolore ut magna est exercitation non officia aliqua deserunt. Id occaecat velit consectetur reprehenderit eu labore qui aliqua ipsum ullamco consequat irure labore. Quis veniam et ipsum ex fugiat nulla deserunt qui consequat. Amet irure proident mollit pariatur adipisicing et sit officia consectetur incididunt nulla tempor dolore.",
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
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: Colors.black,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=150&w=150',
                ),
              ),
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
