import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog/models/data_models.dart';
import 'package:techblog/my_colers.dart';
import 'package:techblog/my_strings.dart';
import 'package:techblog/view/tv_screen.dart';

import '../gen/assets.gen.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({Key? key}) : super(key: key);

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  List<Media> listMedia = [
    Media(
      icon: "assets/images/tv_app.png",
    ),
    Media(
      icon: "assets/images/radio.png",
    ),
    Media(
      icon: "assets/images/book.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.images.anten.path,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: MyStrings.MediaTechblog,
                      style: textTheme.headline4),
                ),
              ),
              const SizedBox(
                height: 32,
              ),

              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1 / 1,
                    ),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Card(
                            elevation: 5,
                            color: const Color.fromARGB(255, 75, 13, 90),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: (() {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => TvScreen()));
                                  });
                                }),
                                child: Image.asset(
                                  listMedia[index].icon!,
                                  width: 75,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
