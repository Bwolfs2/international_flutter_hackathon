import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:international_flutter_hackathon/src/screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'BSYNC',
      theme: ThemeData(
          primaryColor: Color(0xff3AD29F),
          accentColor: Color(0xff736ff4),
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                  title: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w400))),
          textTheme: TextTheme(title: TextStyle(color: Colors.white))),
      home: HomeScreen(),
    );
  }
}
