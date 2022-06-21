import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techblog/models/data_models.dart';
import 'package:techblog/my_colers.dart';
import 'package:techblog/view/main_screen.dart';
import 'package:video_viewer/domain/bloc/controller.dart';
import 'package:video_viewer/video_viewer.dart';

import '../gen/assets.gen.dart';

class TvScreen extends StatefulWidget {
  TvScreen({Key? key}) : super(key: key);

  @override
  _TvScreenState createState() => _TvScreenState();
}

final GlobalKey<ScaffoldState> _key = GlobalKey();

class _TvScreenState extends State<TvScreen> {
  var selectedPageIndex = 0;
  final VideoViewerController controller = VideoViewerController();

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;

    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
          backgroundColor: SolidColors.scafoldBg,
          child: Padding(
            padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
            child: ListView(
              children: [
                DrawerHeader(
                    child: Center(
                  child: Image.asset(
                    Assets.images.tac.path,
                    scale: 3,
                  ),
                )),
                ListTile(
                  title: Text(
                    "پروفایل کاربری",
                    style: textTheme.headline4,
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: SolidColors.dividerColer,
                ),
                ListTile(
                  title: Text(
                    "درباره تک بلاگ",
                    style: textTheme.headline4,
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: SolidColors.dividerColer,
                ),
                ListTile(
                  title: Text(
                    "اشتراک گزاری تک بلاگ",
                    style: textTheme.headline4,
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: SolidColors.dividerColer,
                ),
                ListTile(
                  title: Text(
                    "تک  بلاگ در گیت هاب",
                    style: textTheme.headline4,
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: SolidColors.dividerColer,
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Color.fromARGB(255, 188, 99, 210)],
              )),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: VideoViewer(
                        controller: controller,
                        style: VideoViewerStyle(
                            loading: const CircularProgressIndicator(
                          color: Colors.black,
                        )),
                        autoPlay: true,
                        source: {
                          "channel": VideoSource(
                            video: VideoPlayerController.network(
                                "https://cdn.telewebion.com/tv1/live/720p/index.m3u8"),
                          )
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          Assets.icons.tv1.path,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("پخش زنده شبکه های ایران",
                            style: textTheme.headline4),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1 / 1,
                          ),
                          itemCount: listchannels.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    controller.pause();
                                    controller
                                        .changeSource(
                                            source: VideoSource(
                                              video:
                                                  VideoPlayerController.network(
                                                      listchannels[index]
                                                          .link!),
                                            ),
                                            name: "")
                                        .then((value) {
                                      controller.play();
                                    });
                                  });
                                },
                                child: Card(
                                  elevation: 5,
                                  color: const Color.fromARGB(255, 75, 13, 90),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      listchannels[index].icon!,
                                      width: 75,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 36,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
