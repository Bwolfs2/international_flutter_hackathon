import 'package:flutter/material.dart';
import 'package:international_flutter_hackathon/src/screens/cards/cards_screen.dart';
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
            BottomBarWidget(controller),
          ],
        ),
      ),
    );
  }
}
