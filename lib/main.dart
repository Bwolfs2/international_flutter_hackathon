import 'package:flutter/material.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:international_flutter_hackathon/src/screens/initial/initial_bloc.dart';
import 'package:international_flutter_hackathon/src/screens/initial/initial_screen.dart';
import 'src/screens/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => InitialBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xff3AD29F),
          accentColor: Color(0xff736ff4),
          bottomAppBarColor: Colors.grey[200],
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(
              title: TextStyle(
                color: Colors.white70,
                fontSize: 20,
                fontFamily: "Lato",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          textTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          ),
        ),
        home: InitialScreen(),
      ),
    );
  }
}
