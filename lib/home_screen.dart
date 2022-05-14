import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/models/fake_data.dart';
import 'package:techblog/my_colers.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;

    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Column(
          children: [
            //appbar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(Icons.menu_rounded),
                Image(
                  image: Assets.images.tac,
                  height: size.height / 13.6,
                ),
                const Icon(Icons.search)
              ],
            ),
            Stack(
              children: [
                //اسلایدر  بالا
                Container(
                  width: size.width / 1.25,
                  height: size.height / 4.2,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                          image: AssetImage(homePagePosterMap["imageAsset"]),
                          fit: BoxFit.cover)),
                  foregroundDecoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      gradient: LinearGradient(
                        colors: gradientColors.homePosterCoverGradiant,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                ),

                // متن داخل اسلایدر
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          homePagePosterMap["writer"] +
                              "  -  " +
                              homePagePosterMap["date"],
                          style: textTheme.subtitle1,
                        ),
                        Row(
                          children: [
                            Text(
                              homePagePosterMap["view"],
                              style: textTheme.subtitle1,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                              size: 19,
                            )
                          ],
                        ),
                      ],
                    ),
                    Text(
                      homePagePosterMap["title"],
                      style: textTheme.headline1,
                    ),
                  ]),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            // tag List
            SizedBox(
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tagList.length,
                  itemBuilder: (((context, index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(
                          0, 8, index == 0 ? bodyMargin : 15, 8),
                      child: Container(
                        height: 60,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          gradient: LinearGradient(
                            colors: gradientColors.tags,
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(35, 8, 12, 8),
                          child: Row(
                            children: [
                              ImageIcon(
                                Assets.icons.hashtagicon,
                                color: Colors.white,
                                size: 16,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                tagList[index].title,
                                style: textTheme.headline2,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }))),
            )
          ],
        ),
      )),
    );
  }
}
