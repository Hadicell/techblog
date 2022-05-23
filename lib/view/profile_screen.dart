import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:techblog/models/fake_data.dart';
import 'package:techblog/my_colers.dart';
import 'package:techblog/my_componet.dart';
import 'package:techblog/my_strings.dart';

import '../gen/assets.gen.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({
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
        child: Column(
          children: [
            Image(
              image: Assets.images.avatar,
              height: 100,
            ),
            const SizedBox(
              width: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(
                  Assets.icons.bluePen,
                  color: solidColors.seeMore,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  myStrings.imageProfileEdit,
                  style: textTheme.headline3,
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              "هادی شوکت",
              style: textTheme.headline4,
            ),
            Text(
              " hadi.shokat@gmail.com ",
              style: textTheme.headline4,
            ),
            const SizedBox(
              height: 40,
            ),
            tachDivider(size: size),
            InkWell(
              onTap: (() {
                //یه چیزی اجرا باید شود اینجا
              }),
              splashColor: solidColors.prymaryColor,
              child: SizedBox(
                  height: 45,
                  child: Center(
                      child: Text(
                    myStrings.myFavBlog,
                    style: textTheme.headline4,
                  ))),
            ),
            tachDivider(size: size),
            InkWell(
              onTap: (() {
                //یه چیزی اجرا باید شود اینجا
              }),
              splashColor: solidColors.prymaryColor,
              child: SizedBox(
                  height: 45,
                  child: Center(
                      child: Text(
                    myStrings.myFavpodcast,
                    style: textTheme.headline4,
                  ))),
            ),
            tachDivider(size: size),
            InkWell(
              onTap: (() {
                //یه چیزی اجرا باید شود اینجا
              }),
              splashColor: solidColors.prymaryColor,
              child: SizedBox(
                  height: 45,
                  child: Center(
                      child: Text(
                    myStrings.logOut,
                    style: textTheme.headline4,
                  ))),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ));
  }
}
