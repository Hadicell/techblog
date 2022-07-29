import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:techblog/component/my_strings.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/view/my_cats.dart';
import 'package:validators/validators.dart';

class RegisterIntor extends StatelessWidget {
  const RegisterIntor({Key? key}) : super(key: key);

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
              Assets.images.techbot.path,
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: MyStrings.welcom, style: textTheme.headline4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: ElevatedButton(
                onPressed: () {
                  _showEmailBottomSheet(context, size, textTheme);
                },
                child:  Text("بزن بریم",style: textTheme.headline1,),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Future<dynamic> _showEmailBottomSheet(
      BuildContext context, Size size, TextTheme textTheme) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: ((context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: size.height / 2,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      MyStrings.insertYourEmail,
                      style: textTheme.headline4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: TextField(
                        onChanged: (value) {
                          print(value +
                              " is Email :" +
                              isEmail(value).toString());
                        },
                        style: textTheme.headline4,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "tachblog@gmail.com",
                            hintStyle: textTheme.headline6),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);

                          _activateCodeBottomSheet(context, size, textTheme);
                        },
                        child:  Text("ادامه",style: textTheme.headline1,))
                  ],
                ),
              ),
            ),
          );
        }));
  }

  Future<dynamic> _activateCodeBottomSheet(
      BuildContext context, Size size, TextTheme textTheme) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: ((context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: size.height / 2,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      MyStrings.activateCode,
                      style: textTheme.headline4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: TextField(
                        onChanged: (value) {
                          print(value +
                              " is Email :" +
                              isEmail(value).toString());
                        },
                        style: textTheme.headline4,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: "******", hintStyle: textTheme.headline6),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>  MyCats()));
                        },
                        child:  Text("تایید / ارسال ",style: textTheme.headline1,))
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
