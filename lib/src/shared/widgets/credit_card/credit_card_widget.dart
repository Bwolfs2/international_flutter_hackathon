import 'package:flutter/material.dart';
import 'package:international_flutter_hackathon/src/shared/models/credit_card_model.dart';

class CreditCardWidget extends StatelessWidget {
  final CreditCardModel model;

  const CreditCardWidget({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 5),
        ],
      ),
      width: double.infinity,
      height: 150,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            model.displayName,
            style: TextStyle(fontSize: 16),
          ),
          Text("XXXX XXXX XXXX ${model.partialCardNumber}"),
          Text("07/23"),
        ],
      ),
    );
  }
}
