import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/my_colers.dart';
import 'package:techblog/my_strings.dart';


class registerIntor extends StatelessWidget{
  const registerIntor({Key? key}) : super(key: key);

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
           SvgPicture.asset(Assets.images.techbot.path,height: 100,),
           Padding(
             padding: const EdgeInsets.only(top:16),
             child: RichText(
               textAlign: TextAlign.center,
               text: TextSpan(
                 text: myStrings.welcom,
                 style: textTheme.headline4
               ),
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(top: 62),
             child: ElevatedButton(
               onPressed: () {}, 
             child: Text("بزن بریم"),
              style: ButtonStyle(
                textStyle: MaterialStateProperty.resolveWith((states){

                  if(states.contains(MaterialState.pressed)){
                    return textTheme.headline1;
                  }
                  return textTheme.headline3;
                  
                  }),

                  backgroundColor: MaterialStateProperty.resolveWith((states){

                  if(states.contains(MaterialState.pressed)){
                    return solidColors.seeMore;

                  }
                  return solidColors.prymaryColor;
                  
                  })
              ),


             ),
           )
         ],
       ),
     ),
   )
   
   );
  }



}