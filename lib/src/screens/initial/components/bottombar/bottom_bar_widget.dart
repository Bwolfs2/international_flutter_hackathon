import 'package:flutter/material.dart';

class BottomBarWidget extends StatefulWidget {
  final TabController controller;

  const BottomBarWidget(this.controller, {Key key}) : super(key: key);
  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 15),
        ],
      ),
      child: TabBar(
        controller: widget.controller,
        labelColor: Theme.of(context).primaryColor,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.home, size: 30,)),
          Tab(icon: Icon(Icons.credit_card, size: 30)),
          Tab(icon: Icon(Icons.history, size: 30)),
        ],
      ),
    );
  }
}
