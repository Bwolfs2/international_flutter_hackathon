import 'package:flutter/material.dart';

class HomeCardSaldo extends StatefulWidget {
  @override
  _HomeCardSaldoState createState() => _HomeCardSaldoState();
}

class _HomeCardSaldoState extends State<HomeCardSaldo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xff736ff4),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height *.22,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[
                Text(
                  "SALDO",
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
                Text("R\$ 270,00" , style: TextStyle(
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
