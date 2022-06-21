import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/models/data_models.dart';
import 'package:techblog/my_colers.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({Key? key}) : super(key: key);

  @override
  _RadioScreenState createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  var selectedPageIndex = 0;
  AudioPlayer player = AudioPlayer();
  

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            // color: Colors.red,
            width: double.infinity, height: size.height / 2.5,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: size.height / 2.1,
                  decoration: BoxDecoration(
             
                      image: DecorationImage(
                          image:
                              AssetImage(listradio[selectedPageIndex].image!),
                          fit: BoxFit.fitWidth)),
                )
              ],
            ),
          ),
          Expanded(
            
            child: GridView.builder(
              
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 1,
                ),
                
                itemCount: listradio.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: GestureDetector(
                      
                      onTap: () {
                        setState(() {
                          selectedPageIndex = index;
                          player.setUrl(listradio[index].url!);
                          player.play();
                          for (var element in listradio) {
                            element.isPlay = false;
                          }
                          listradio[index].isPlay = true;
                        });
                      },
                      child: Card(
                        elevation: 10,
                        color: const Color.fromARGB(255, 75, 13, 90),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon(
                            //   listradio[index].isPlay
                            //       ? CupertinoIcons.pause_circle
                            //       : CupertinoIcons.play_circle,
                            //   color: Colors.red,
                            //   size: 35,
                            // ),
                            Image.asset(
                              listradio[index].icon!,
                              width: 85,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          
          ),
        ],
      ),
    ));
  }
}
