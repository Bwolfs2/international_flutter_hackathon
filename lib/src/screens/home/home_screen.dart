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
    return Scaffold(      
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: IgnorePointer(
                child: AnimatedCard(
                  direction: AnimatedCardDirection.left,
                  initDelay: Duration(milliseconds: 0),
                  duration: Duration(milliseconds: 400),
                  child: HomeCardGastos(),
                ),
              ),
            ),
            IgnorePointer(
              child: AnimatedCard(
                direction: AnimatedCardDirection.right,
                initDelay: Duration(milliseconds: 0),
                duration: Duration(milliseconds: 400),
                child: HomeCardSaldo(),
              ),
            ),
            IgnorePointer(
              child: AnimatedCard(
                direction: AnimatedCardDirection.bottom,
                initDelay: Duration(milliseconds: 0),
                duration: Duration(milliseconds: 400),
                child: HomeCardBalanco(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
