import 'package:flutter/material.dart';
import 'package:techblog/component/my_colers.dart';
import 'package:techblog/component/my_strings.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/models/data_models.dart';
import 'package:techblog/view/concert_screen.dart';
import 'package:techblog/view/radio_screen.dart';
import 'package:techblog/view/tv_screen.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({Key? key}) : super(key: key);

  @override
  _MediaScreenState createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      backgroundColor: SolidColors.prymaryColor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.icons.liner.path,
                  color: Colors.white,
                ),
                Text(
                  MyStrings.MediaTechblog,
                  style: textTheme.headline1,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: listMedia.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                      child: InkWell(
                        onTap: () {
                          switch (listMedia[index].name) {
                            case "Tv_online":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TvScreen()));
                              break;
                            case "Radio_online":
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RadioScreen()));
                              break;

                            case "Concert"  :
                               Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConcertScreen()
                                   ));
                                      break;

                          }
                        },
                        child: Stack(
                          children: [
                            AnimatedContainer(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(listMedia[index].image!),
                                    fit: BoxFit.fill,
                                  )),
                              duration: const Duration(milliseconds: 500),
                              width: double.infinity,
                              height: 150,
                            ),
                            Positioned(
                              right: 10,
                              top: 75,
                              child: Text(
                                listMedia[index].title!,
                                textAlign: TextAlign.right,
                                textDirection: TextDirection.rtl,
                                style: textTheme.headline1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }))
        ]),
      ),
    ));
  }
}
