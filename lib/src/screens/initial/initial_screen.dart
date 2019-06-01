import 'package:flutter/material.dart';
import 'package:international_flutter_hackathon/src/screens/cards/cards_screen.dart';
import 'package:international_flutter_hackathon/src/screens/expense/expense_screen.dart';
import 'package:international_flutter_hackathon/src/screens/history/history_screen.dart';
import 'package:international_flutter_hackathon/src/screens/home/home_screen.dart';

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
    return Container(
      child: Scaffold(
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
            Container(
              height: 60,
              decoration: BoxDecoration(
              color: Color(0xfff2f2f2),
              ),
              child: TabBar(
                controller: controller,
                labelColor: Theme.of(context).primaryColor,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.home,size: 35,)),
                  Tab(icon: Icon(Icons.credit_card,size: 35)),
                  Tab(icon: Icon(Icons.history,size: 35)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
