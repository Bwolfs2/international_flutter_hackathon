import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:international_flutter_hackathon/src/shared/models/credit_card_model.dart';
import 'package:international_flutter_hackathon/src/shared/repositories/general_repository.dart';
import 'package:international_flutter_hackathon/src/shared/widgets/credit_card/credit_card_widget.dart';

class CardsScreen extends StatefulWidget {
  @override
  _CardsScreenState createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  var list = <CreditCardModel>[
    CreditCardModel(
      partialCardNumber: "1111",
      displayName: "Cartão 1",
      saldoDisponivel: "R\$ 300,00",
      saldoGasto: "R\$ 500,00",
    ),
    CreditCardModel(
      partialCardNumber: "2222",
      displayName: "Cartão 2",
      saldoDisponivel: "R\$ 300,00",
      saldoGasto: "R\$ 100,00",
    ),
    CreditCardModel(
      partialCardNumber: "3333",
      displayName: "Cartão 3",
      saldoDisponivel: "R\$ 500,00",
      saldoGasto: "R\$ 600,00",
    ),
  ];

  var controller = PageController(
    viewportFraction: 0.9,
    keepPage: true,
    initialPage: 0,
  );

  List<Widget> get pageViewChilds =>
      list.map((item) => CreditCardWidget(item)).toList();

  CreditCardModel get currentCard {
    var index =
        controller.positions?.isEmpty ? 0 : controller.page?.round() ?? 0;
    index = index >= list.length ? list.length - 1 : index;
    return list[index];
  }

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
                        style: TextStyle(
                          color: Color(0xff30c7b8),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          preferredSize: const Size.fromHeight(70),
        ),
        body: Center(
          child: list.isEmpty
              ? CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    AnimatedCard(
                      direction: AnimatedCardDirection.top,
                      initOffset: Offset(0, -250),
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        child: PageView(
                          controller: controller,
                          children: pageViewChilds,
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    AnimatedBuilder(
                        animation: controller,
                        builder: (context, snapshot) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              AnimatedCard(
                                initDelay: Duration(milliseconds: 600),
                                direction: AnimatedCardDirection.left,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(Icons.arrow_downward,
                                        color: Colors.red, size: 30),
                                    Text(
                                      currentCard.saldoGasto,
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                              AnimatedCard(
                                initDelay: Duration(milliseconds: 600),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(Icons.arrow_upward,
                                        color: Colors.green, size: 30),
                                    Text(
                                      currentCard.saldoDisponivel,
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }),
                  ],
                ),
        ),
      ),
    );
  }
}
