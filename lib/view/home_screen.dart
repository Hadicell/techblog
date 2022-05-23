import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:techblog/models/fake_data.dart';
import 'package:techblog/my_colers.dart';
import 'package:techblog/my_strings.dart';

import '../gen/assets.gen.dart';



class homeScreen extends StatelessWidget {
  const homeScreen({
    Key? key,
    required this.size,
    required this.textTheme,
    required this.bodyMargin,
  }) : super(key: key);

  final Size size;
  final TextTheme textTheme;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Column(
          children: [
            homePagePoster(size: size, textTheme: textTheme),
            const SizedBox(
              height: 16,
            ),
            
            homePageTagList(bodyMargin: bodyMargin, textTheme: textTheme),

            const SizedBox(
              height: 32,
            ),

            
            seeMoreBlog(bodyMargin: bodyMargin, textTheme: textTheme),

            
            homePageBlogList(size: size, bodyMargin: bodyMargin, textTheme: textTheme),

            const SizedBox(
              height: 32,
            ),
            
            seeMorePodcast(bodyMargin: bodyMargin, textTheme: textTheme),
            
            homePageListPodcast(size: size, bodyMargin: bodyMargin, textTheme: textTheme),

            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class homePageListPodcast extends StatelessWidget {
  const homePageListPodcast({
    Key? key,
    required this.size,
    required this.bodyMargin,
    required this.textTheme,
  }) : super(key: key);

  final Size size;
  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
          itemCount: podcastList.getRange(0, 7).length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            //podcast item
            return Padding(
              padding: EdgeInsets.only(
                  right: index == 0 ? bodyMargin : 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: size.height / 5.3,
                      width: size.width / 2.4,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(
                                      Radius.circular(16)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      podcastList[index]
                                          .imageUrl),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 2.4,
                    child: Text(
                      podcastList[index].title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: textTheme.headline5,
                    ),
                  )
                ],
              ),
            );
          })),
    );
  }
}

class seeMorePodcast extends StatelessWidget {
  const seeMorePodcast({
    Key? key,
    required this.bodyMargin,
    required this.textTheme,
  }) : super(key: key);

  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodyMargin, bottom: 8),
      child: Row(
        children: [
          ImageIcon(
            Assets.icons.podcast,
            color: solidColors.seeMore,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            myStrings.viewHotestPodCasts,
            style: textTheme.headline3,
          )
        ],
      ),
    );
  }
}

class homePageBlogList extends StatelessWidget {
  const homePageBlogList({
    Key? key,
    required this.size,
    required this.bodyMargin,
    required this.textTheme,
  }) : super(key: key);

  final Size size;
  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height / 3.5,
      child: ListView.builder(
          itemCount: blogList.getRange(0, 7).length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            //blog item
            return Padding(
              padding: EdgeInsets.only(
                  right: index == 0 ? bodyMargin : 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: size.height / 5.3,
                      width: size.width / 2.4,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(
                                      Radius.circular(16)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      blogList[index].imageUrl),
                                  fit: BoxFit.cover),
                            ),
                            foregroundDecoration:
                                const BoxDecoration(
                                    borderRadius: BorderRadius
                                        .all(Radius.circular(
                                            16)),
                                    gradient: LinearGradient(
                                        begin: Alignment
                                            .bottomCenter,
                                        end:
                                            Alignment.topCenter,
                                        colors: gradientColors
                                            .blogPost)),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  blogList[index].writer,
                                  style: textTheme.subtitle2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      blogList[index].views,
                                      style:
                                          textTheme.subtitle2,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Icon(
                                      Icons
                                          .remove_red_eye_outlined,
                                      color: Colors.white,
                                      size: 19,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 2.4,
                    child: Text(
                      blogList[index].title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: textTheme.headline5,
                    ),
                  )
                ],
              ),
            );
          })),
    );
  }
}

class seeMoreBlog extends StatelessWidget {
  const seeMoreBlog({
    Key? key,
    required this.bodyMargin,
    required this.textTheme,
  }) : super(key: key);

  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: bodyMargin, bottom: 8),
      child: Row(
        children: [
          ImageIcon(
            Assets.icons.bluePen,
            color: solidColors.seeMore,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            myStrings.viewHotestBlog,
            style: textTheme.headline3,
          )
        ],
      ),
    );
  }
}

class homePageTagList extends StatelessWidget {
  const homePageTagList({
    Key? key,
    required this.bodyMargin,
    required this.textTheme,
  }) : super(key: key);

  final double bodyMargin;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                  borderRadius:
                      BorderRadius.all(Radius.circular(18)),
                  gradient: LinearGradient(
                    colors: gradientColors.tags,
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.fromLTRB(35, 8, 12, 8),
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
    );
  }
}

class homePagePoster extends StatelessWidget {
  const homePagePoster({
    Key? key,
    required this.size,
    required this.textTheme,
  }) : super(key: key);

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //اسلایدر  بالا
        Container(
          width: size.width / 1.25,
          height: size.height / 4.2,
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.all(Radius.circular(16)),
              image: DecorationImage(
                  image: AssetImage(
                      homePagePosterMap["imageAsset"]),
                  fit: BoxFit.cover)),
          foregroundDecoration: const BoxDecoration(
              borderRadius:
                  BorderRadius.all(Radius.circular(16)),
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
    );
  }
}
