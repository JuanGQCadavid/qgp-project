import 'package:flutter/material.dart';
import 'package:qgp_v8/features/stories/infraestructure/presentation/widgets/story_actions.dart';
import 'package:qgp_v8/features/stories/infraestructure/presentation/widgets/story_body.dart';
import 'package:qgp_v8/features/stories/infraestructure/presentation/widgets/story_header.dart';
import 'package:qgp_v8/features/stories/infraestructure/presentation/widgets/story_title.dart';

class StoryReadView extends StatelessWidget {
  const StoryReadView({Key? key}) : super(key: key);

  final String userPhoto =
      'https://media-exp1.licdn.com/dms/image/C5603AQHvZk-XJOlydQ/profile-displayphoto-shrink_200_200/0/1630040882983?e=1635379200&v=beta&t=T4159z7V2Ozkz04rygZWdbZoMNwXSYsdIbdbn2whVt8';
  final String userPostDate = '8/27/2021';
  final String username = 'Juan Gonzalo Quiroz Cadavid';

  // ***
  final String storyTitle =
      "Rente un apartamento y me vino con una paloma muerta X.X";
  final String storyImageURL = "https://i.imgur.com/SzSydyn.jpg";
  final String storyShortDescription =
      "Velit dolore commodo non duis sint aliquip magna consectetur veniam cupidatat est consequat quis laboris. Veniam ut irure esse commodo anim laborum est aliqua irure. Nisi culpa reprehenderit ullamco laboris ex aliqua voluptate laborum amet est adipisicing quis velit reprehenderit.Fugiat dolore aliquip duis officia occaecat dolor in quis esse tempor amet. Laborum laborum aute sit amet irure amet. Ea labore commodo eiusmod deserunt veniam nulla do. Nulla consequat qui nisi laborum ex. Officia voluptate cillum id veniam consectetur velit elit eu aliquip tempor elit laboris culpa.Irure dolore nulla laborum eiusmod. Irure amet id excepteur minim. Nostrud dolore do proident do id ullamco deserunt laboris esse. Ex sit occaecat commodo mollit consectetur eu excepteur sunt cupidatat. Pariatur laborum occaecat esse incididunt fugiat.Adipisicing qui dolore sint dolor occaecat aute deserunt. Magna culpa excepteur ex irure qui mollit ea. Officia in id laboris officia occaecat magna id proident eiusmod exercitation. Excepteur duis quis enim velit laboris culpa aliquip esse magna reprehenderit non laboris.Deserunt veniam ullamco proident ut occaecat. Id tempor id dolore ut magna est exercitation non officia aliqua deserunt. Id occaecat velit consectetur reprehenderit eu labore qui aliqua ipsum ullamco consequat irure labore. Quis veniam et ipsum ex fugiat nulla deserunt qui consequat. Amet irure proident mollit pariatur adipisicing et sit officia consectetur incididunt nulla tempor dolore.";
  final int storyCommentsCounter = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          StoryHeader(
            userPhotoLink: userPhoto,
            date: userPostDate,
            userName: username,
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: StoryTitle(
                title: storyTitle,
              )),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              height: 220,
              image: NetworkImage(storyImageURL),
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          StoryBody(
            data: storyShortDescription,
          ),
          const SizedBox(
            height: 30,
          ),
          StoryActions(
            commentsCounter: storyCommentsCounter,
          )
        ],
      ),
    );
  }
}
