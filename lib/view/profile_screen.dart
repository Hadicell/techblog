import 'package:flutter/material.dart';
import 'package:techblog/component/my_colers.dart';
import 'package:techblog/component/my_componet.dart';
import 'package:techblog/component/my_strings.dart';
import '../gen/assets.gen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
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
          padding: const EdgeInsets.only(top: 24),
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
                    color: SolidColors.seeMore,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    MyStrings.imageProfileEdit,
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
              TachDivider(size: size),
              InkWell(
                onTap: (() {
                  //یه چیزی اجرا باید شود اینجا
                }),
                splashColor: SolidColors.prymaryColor,
                child: SizedBox(
                    height: 45,
                    child: Center(
                        child: Text(
                      MyStrings.myFavBlog,
                      style: textTheme.headline4,
                    ))),
              ),
              TachDivider(size: size),
              InkWell(
                onTap: (() {
                  //یه چیزی اجرا باید شود اینجا
                }),
                splashColor: SolidColors.prymaryColor,
                child: SizedBox(
                    height: 45,
                    child: Center(
                        child: Text(
                      MyStrings.myFavpodcast,
                      style: textTheme.headline4,
                    ))),
              ),
              TachDivider(size: size),
              InkWell(
                onTap: (() {
                  //یه چیزی اجرا باید شود اینجا
                }),
                splashColor: SolidColors.prymaryColor,
                child: SizedBox(
                    height: 45,
                    child: Center(
                        child: Text(
                      MyStrings.logOut,
                      style: textTheme.headline4,
                    ))),
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ));
  }
}
