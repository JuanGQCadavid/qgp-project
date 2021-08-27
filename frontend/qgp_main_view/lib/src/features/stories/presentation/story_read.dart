import 'package:flutter/material.dart';
import 'package:qgp_main_view/src/core/widgets/cta_bottons.dart';
import 'package:qgp_main_view/src/core/widgets/text_utils.dart';
import 'package:qgp_main_view/src/features/stories/presentation/widgets/user_header.dart';

class StoryReadView extends StatelessWidget {
  const StoryReadView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      width: 800,
      child: Column(
        children: [
          StoryHeader(
            userPhotoLink:
                'https://media-exp1.licdn.com/dms/image/C5603AQHvZk-XJOlydQ/profile-displayphoto-shrink_200_200/0/1630040882983?e=1635379200&v=beta&t=T4159z7V2Ozkz04rygZWdbZoMNwXSYsdIbdbn2whVt8',
            date: '8/27/2021',
            userName: 'Juan Gonzalo Quiroz Cadavid',
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 60),
            child: Align(
                alignment: Alignment.centerLeft,
                child: StoryTitle(
                  title:
                      "Rente un apartamento y me vino con una paloma muerta X.X",
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 60),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage('https://i.imgur.com/SzSydyn.jpg'))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 60),
            child: StoryBody(
              data:
                  "Velit dolore commodo non duis sint aliquip magna consectetur veniam cupidatat est consequat quis laboris. Veniam ut irure esse commodo anim laborum est aliqua irure. Nisi culpa reprehenderit ullamco laboris ex aliqua voluptate laborum amet est adipisicing quis velit reprehenderit.Fugiat dolore aliquip duis officia occaecat dolor in quis esse tempor amet. Laborum laborum aute sit amet irure amet. Ea labore commodo eiusmod deserunt veniam nulla do. Nulla consequat qui nisi laborum ex. Officia voluptate cillum id veniam consectetur velit elit eu aliquip tempor elit laboris culpa.Irure dolore nulla laborum eiusmod. Irure amet id excepteur minim. Nostrud dolore do proident do id ullamco deserunt laboris esse. Ex sit occaecat commodo mollit consectetur eu excepteur sunt cupidatat. Pariatur laborum occaecat esse incididunt fugiat.Adipisicing qui dolore sint dolor occaecat aute deserunt. Magna culpa excepteur ex irure qui mollit ea. Officia in id laboris officia occaecat magna id proident eiusmod exercitation. Excepteur duis quis enim velit laboris culpa aliquip esse magna reprehenderit non laboris.Deserunt veniam ullamco proident ut occaecat. Id tempor id dolore ut magna est exercitation non officia aliqua deserunt. Id occaecat velit consectetur reprehenderit eu labore qui aliqua ipsum ullamco consequat irure labore. Quis veniam et ipsum ex fugiat nulla deserunt qui consequat. Amet irure proident mollit pariatur adipisicing et sit officia consectetur incididunt nulla tempor dolore.",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 60),
            child: StoryActions(),
          )
        ],
      ),
    );
  }
}

class StoryActions extends StatelessWidget {
  const StoryActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextHighlighted(
            boddyText: '10 Comentarios',
            icon: Icons.chat_bubble_outline,
          ),
          SizedBox(
            width: 20,
          ),
          MainCTA(
            ctaName: 'Leer mas',
            onTap: () {},
            topCorner: true,
            bottomCorner: false,
          )
        ],
      ),
    );
  }
}

class StoryTitle extends StatelessWidget {
  final String title;

  const StoryTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    ));
  }
}

class StoryBody extends StatelessWidget {
  final String data;
  final bool displayLeftDivider;
  final int maxLines;

  const StoryBody({
    required this.data,
    this.displayLeftDivider = false,
    this.maxLines = 4,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.justify,
    );
  }
}
