import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:techblog/component/my_colers.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/models/data_models.dart';


class ConcertScreen extends StatefulWidget {
  const ConcertScreen({Key? key}) : super(key: key);

  @override
  _ConcertScreenState createState() => _ConcertScreenState();
}

class _ConcertScreenState extends State<ConcertScreen> {
  var selectedPageIndex = 0;
   AudioPlayer player = AudioPlayer();




   
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Color.fromARGB(255, 121, 21, 146)],
            )),
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                    color: SolidColors.prymaryColor,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Image.asset(
                        Assets.icons.blit.path,
                        width: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        "خرید بلیط کنسرت",
                        style: TextStyle(
                            color: Colors.amber[800],
                            fontWeight: FontWeight.w900,
                            fontSize: 17),
                      ),
                      const Spacer(),
                      const Text(
                        "TECHBLOG",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                
                 child: ListView.builder(
                itemCount: listconcert.length,
                itemBuilder: (context, index){
                  return  GestureDetector(
                      onTap: () {

                        setState(() async {
                          player.setUrl(listconcert[index].url!);
                          
                          await player.play();
                          await player.pause(); 
                          for (var element in listconcert) {element.isPlay = false;}
                          listconcert[index].isPlay = true;
                 
                        });

                      },
            
            
                
                   child: Padding(
                     padding: const EdgeInsets.all(16),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                       child:Image.asset(
                         Assets.images.mohsenY.path,
                         width: double.infinity,
                         fit: BoxFit.cover,
                         
                       ),
                       
                       
                     ),
                   ),
                   
                       );
                       
                }
                
              ),
              
              ),
         
          
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 15, 15, 15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          "محل سِن",
                          style: TextStyle(
                            color: SolidColors.selectedPodcast,
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                            child: Row(
                          children: [
                            Expanded(
                              child: GridView.builder(
                                
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                  ),
                                  itemCount: 24,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 0),
                                      child: Container(
                                         
                                         decoration: BoxDecoration(
                                             borderRadius: BorderRadius.vertical(
                                               
                                                 top: Radius.circular(10)),
                                             color: index % 3 == 0
                                                 ? Colors.white
                                                 : Color.fromARGB(
                                                     255, 13, 163, 146)),
                                                     
                                         child: Center(
                                           
                                           child: Text(
                                             
                                             (index + 1).toString(),
                                             style: const TextStyle(
                                                 fontWeight: FontWeight.bold),
                                           ),
                                         ),
                                       ),
                                    );
                                  }),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                  ),
                                  itemCount: 24,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(10)),
                                            color: index % 3 == 0
                                                ? Color.fromARGB(
                                                    255, 227, 183, 59)
                                                : Color.fromARGB(
                                                    255, 13, 163, 146)),
                                        child: Center(
                                          child: Text(
                                            (index + 1).toString(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        )),
                        const SizedBox(
                          height: 8,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          minWidth: 250,
                          color: Color.fromARGB(255, 144, 3, 169),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50)
                            )
                          ),

                          child: const Text(
                            "خرید بلیط",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 18,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
       
              ),
              
            ],
            
          ),
          
        ]),
        
      ),
    );
  }
}
