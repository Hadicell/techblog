import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techblog/my_colers.dart';
import 'package:techblog/my_componet.dart';
import 'package:techblog/view/Media_screen.dart';
import 'package:techblog/view/main_screen.dart';
import 'package:techblog/view/profile_screen.dart';
import 'package:techblog/view/register_intro.dart';
import 'package:techblog/view/tv_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: SolidColors.statusBarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.systemNavigationBarColor,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    

    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', ''), // farsi
      ],

      theme: ThemeData(

       inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(width: 2),
        ),
        filled: true,
        fillColor: Colors.white
       ),

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                textStyle: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return textTheme.headline1;
              }
              return textTheme.subtitle1;
            }), backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return SolidColors.seeMore;
              }
              return SolidColors.prymaryColor;
            })),
          ),

          
          fontFamily: 'dubai',
          brightness: Brightness.light,
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontFamily: 'dubai',
                color: SolidColors.posterTitel,
                fontWeight: FontWeight.w700,
                fontSize: 16),
            subtitle1: TextStyle(
                fontFamily: 'dubai',
                color: SolidColors.posterSubTitle,
                fontWeight: FontWeight.w300,
                fontSize: 15),
            subtitle2: TextStyle(
                fontFamily: 'dubai',
                color: SolidColors.posterSubTitle,
                fontWeight: FontWeight.w700,
                fontSize: 15),
            bodyText1: TextStyle(
                fontFamily: 'dubai',
                color: Colors.black12,
                fontWeight: FontWeight.w700,
                fontSize: 15),
            headline2: TextStyle(
                fontFamily: 'dubai',
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w300,
                fontSize: 16),
            headline3: TextStyle(
                fontFamily: 'dubai',
                color: SolidColors.seeMore,
                fontWeight: FontWeight.w700,
                fontSize: 14),
            headline4: TextStyle(
                fontFamily: 'dubai',
                color: Color.fromARGB(255, 70, 70, 70),
                fontWeight: FontWeight.w900,
                fontSize: 15),
            headline5: TextStyle(
                fontFamily: 'dubai',
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w700,
                fontSize: 15),
            headline6: TextStyle(
                fontFamily: 'dubai',
                color: SolidColors.hintText,
                fontWeight: FontWeight.w700,
                fontSize: 14),
          )),
      debugShowCheckedModeBanner: false,

      // home: splashScreen(),
      home: MediaScreen()
    );
  }
}
