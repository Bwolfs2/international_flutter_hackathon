import 'package:flutter/material.dart';
import 'package:international_flutter_hackathon/src/screens/cards/cards_screen.dart';
import 'package:international_flutter_hackathon/src/screens/expense/expense_screen.dart';
import 'package:international_flutter_hackathon/src/screens/history/history_screen.dart';
import 'package:international_flutter_hackathon/src/screens/home/home_screen.dart';
import 'package:international_flutter_hackathon/src/screens/initial/components/bottombar/bottom_bar_widget.dart';

class InitialScreen extends StatefulWidget {
  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
            appBar: PreferredSize(
            child: Container(
              color: Color(0xfff2f2f2),
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      backgroundColor: Color(0xff736ff4)),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Bem vindo,"),
                        Text(
                          "Pedro da Silva",
                          style:
                              TextStyle(color: Color(0xff30c7b8), fontSize: 18),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            preferredSize: const Size.fromHeight(70),
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: TabBarView(
                  controller: controller,
                 // physics: NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    HomeScreen(),
                    CardsScreen(),
                    ExpenseScreen(),
                  ],
                ),
              ),
              BottomBarWidget(controller),
            ],
          ),
        ),
      ),
    );
  }
}
