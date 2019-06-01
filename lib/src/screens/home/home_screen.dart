import 'package:flutter/material.dart';
import 'package:animated_card/animated_card.dart';
import 'package:flutter/rendering.dart';
import 'home_card_balanco.dart';
import 'home_card_gastos.dart';
import 'home_card_saldo.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: (){
                  
                },
                              child: AnimatedCard(
                  direction: AnimatedCardDirection.left,
                  //Initial animation direction
                  initDelay: Duration(milliseconds: 0),
                  //Delay to initial animation
                  duration: Duration(milliseconds: 400),
                  //Initial animation duration
                  child: HomeCardGastos(),
                ),
              ),
              AnimatedCard(
                direction: AnimatedCardDirection.right,
                //Initial animation direction
                initDelay: Duration(milliseconds: 0),
               
                duration: Duration(milliseconds: 400),
                
                child: HomeCardSaldo(),
              ),
              AnimatedCard(
                direction: AnimatedCardDirection.bottom,
                //Initial animation direction
                initDelay: Duration(milliseconds: 0),
                //Delay to initial animation
                duration: Duration(milliseconds: 400),
                //Initial animation duration
                child: HomeCardBalanco(),
              ),

            ],
          ),
        ),
      ),
    );
  }

}
