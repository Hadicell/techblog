import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/my_colers.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Column(
          children: [
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
                Container(
                  width: size.width / 1.25,
                  height: size.height / 4.2,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      image: DecorationImage(
                          image: Image(image: Assets.images.posterTest).image,
                          fit: BoxFit.cover)),

                          foregroundDecoration:const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      gradient: LinearGradient(
                        colors: gradientColors.homePosterCoverGradiant,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )) ,
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("هادی شوکت - یک روز پیش",style: textTheme.subtitle1,),
                          Text("Like 253",style: textTheme.subtitle1,),
                
                        ],
                      ),
                      Text("متن بلند       اینجا نوشته میشود",style: textTheme.headline1,),
                    ]
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
