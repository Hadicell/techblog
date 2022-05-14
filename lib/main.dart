import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/my_colers.dart';
import 'package:techblog/splash_screen.dart';

void main() {

SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
statusBarColor: solidColors.statusBarColor,
statusBarIconBrightness: Brightness.dark,
systemNavigationBarColor: solidColors.systemNavigationBarColor,
systemNavigationBarIconBrightness: Brightness.dark,
));


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
          fontFamily: 'dubai',
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontFamily: 'dubai',
                color: solidColors.posterTitel,
                fontWeight: FontWeight.w700,
                fontSize: 16),

            subtitle1: TextStyle(
                fontFamily: 'dubai',
                color: solidColors.posterSubTitle,
                fontWeight: FontWeight.w300,
                fontSize: 15),

            bodyText1: TextStyle(
                fontFamily: 'dubai',
                color: Colors.black12,
                fontWeight: FontWeight.w300,
                fontSize: 10),
            headline2: TextStyle(
                fontFamily: 'dubai',
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w300,
                fontSize: 16),
            headline3: TextStyle(
                fontFamily: 'dubai',
                color: Color.fromARGB(255, 173, 87, 100),
                fontWeight: FontWeight.w700,
                fontSize: 14),
            headline4: TextStyle(
                fontFamily: 'dubai',
                color: Color.fromARGB(255, 70, 70, 70),
                fontWeight: FontWeight.w700,
                fontSize: 14),
          )),
      debugShowCheckedModeBanner: false,
      
      home: splashScreen(),
    );
  }
}
