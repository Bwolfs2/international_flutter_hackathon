import 'package:flutter/material.dart';
import 'package:international_flutter_hackathon/src/shared/widgets/credit_card/credit_card_widget.dart';

class CardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            CreditCardWidget(),
            SizedBox(height: 25),
            CreditCardWidget(),
          ],
        ),
      ),
    );
  }
}
