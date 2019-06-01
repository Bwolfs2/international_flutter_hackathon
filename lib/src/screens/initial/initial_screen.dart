import 'package:flutter/material.dart';
import 'package:international_flutter_hackathon/src/screens/cards/cards_screen.dart';
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
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  HomeScreen(),
                  CardsScreen(),
                  HistoryScreen(),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(color: Colors.black26, blurRadius: 15),
                ],
              ),
              child: TabBar(
                controller: controller,
                labelColor: Theme.of(context).primaryColor,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.home), text: "Home"),
                  Tab(icon: Icon(Icons.credit_card), text: "Cards"),
                  Tab(icon: Icon(Icons.format_list_numbered), text: "History"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
