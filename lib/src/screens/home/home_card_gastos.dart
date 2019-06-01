import 'package:flutter/material.dart';

class HomeCardGastos extends StatefulWidget {
  @override
  _HomeCardGastosState createState() => _HomeCardGastosState();
}

class _HomeCardGastosState extends State<HomeCardGastos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xff3ad29f),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "GASTOS",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 30),
                ),
                Text(
                  "JUN/19",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 27),
                ),
              ],
            ),
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("R\$ 900,00" , style: TextStyle(
                  fontWeight: FontWeight.w700, color: Color(0xfff2f2f2) , fontSize: 45
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
