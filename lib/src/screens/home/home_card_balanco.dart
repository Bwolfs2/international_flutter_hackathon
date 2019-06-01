import 'package:flutter/material.dart';

class HomeCardBalanco extends StatefulWidget {
  @override
  _HomeCardBalancoState createState() => _HomeCardBalancoState();
}

class _HomeCardBalancoState extends State<HomeCardBalanco> {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffff9e80),
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
                  "BALANÇO",
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
                Text("R\$ - 630,00" , style: TextStyle(
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
