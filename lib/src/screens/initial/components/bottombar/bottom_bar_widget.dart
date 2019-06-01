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
          Tab(icon: Icon(Icons.home), text: "Home"),
          Tab(icon: Icon(Icons.credit_card), text: "Cards"),
          Tab(icon: Icon(Icons.format_list_numbered), text: "History"),
        ],
      ),
    );
  }
}
