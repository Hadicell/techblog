import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog/component/my_colers.dart';
import 'package:techblog/component/my_componet.dart';
import 'package:techblog/component/my_strings.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/models/fake_data.dart';


class MyCats extends StatefulWidget {
  @override
  State<MyCats> createState() => _MyCatsState();
}

class _MyCatsState extends State<MyCats> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    var bodyMargin = size.width / 10;

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16,
                ),
                SvgPicture.asset(
                  Assets.images.techbot.path,
                  height: 100,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  MyStrings.successfulRegistration,
                  style: textTheme.headline4,
                ),
                
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  style: textTheme.headline4,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      alignLabelWithHint: true,
                      hintText: "نام و نام خانوادگی",
                      hintStyle: textTheme.headline6),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  MyStrings.chooseCats,
                  style: textTheme.headline4,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: SizedBox(
                    width: double.infinity,
                    height: 95,
                    child: GridView.builder(
                        physics: const ClampingScrollPhysics(),
                        itemCount: tagList.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 2,
                                childAspectRatio: 0.3),
                        itemBuilder: ((context, index) {
                          return InkWell(
                              onTap: (() {
                                setState(() {

                                  if(!selectedTags.contains(tagList[index])){

                                    selectedTags.add(tagList[index]);
                                  }
                                  else{
                                    _showsnackBar(context, "${tagList[index].title}  :  قبلاً اضافه شده است ");
                                    
                                    
                                  }
                                  





                                });
                              }),
                              child:
                                  MainTags(textTheme: textTheme, index: index));
                        })),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Image.asset(
                  Assets.icons.arrow.path,
                  scale: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: SizedBox(
                    width: double.infinity,
                    height: 85,
                    child: GridView.builder(
                        physics: const ClampingScrollPhysics(),
                        itemCount: selectedTags.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                crossAxisCount: 2,
                                childAspectRatio: 0.2),
                        itemBuilder: ((context, index) {
                          return Container(
                            height: 60,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(24)),
                                color: SolidColors.surface),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    selectedTags[index].title,
                                    style: textTheme.headline4,
                                  ),
                                  InkWell(
                                    onTap: (() {
                                      setState(() {
                                        selectedTags.removeAt(index);
                                      });
                                    }),

                                    child: const Icon(
                                      CupertinoIcons.delete,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                  ),
                                  
                                ],
                              ),
                           
                            ),

                            
                          );
                        })),
                  ),
                ),
                 ElevatedButton(
                        onPressed: () {


                        },


                        child:  Text("      ادامه      ",style: textTheme.headline1,))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}


// ایجاد اسنک بار برای نمایش پیامی به کاربر در هنگام تکرار مجدد لیست 
void _showsnackBar(BuildContext context, String msg) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      msg,
      style: Theme.of(context).textTheme.headline1,
      
    ),
    
    backgroundColor: SolidColors.prymaryColor
    
  ));
}