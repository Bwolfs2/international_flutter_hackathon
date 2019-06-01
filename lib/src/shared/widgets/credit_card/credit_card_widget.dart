import 'package:flutter/material.dart';
import 'package:international_flutter_hackathon/src/shared/models/credit_card_model.dart';

class CreditCardWidget extends StatelessWidget {
  final CreditCardModel model;

  const CreditCardWidget(this.model, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Color(0xffff9e80),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 5),
        ],
      ),
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            model.displayName,
            style: TextStyle(
              fontSize: 30,
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "XXXX XXXX XXXX ${model.partialCardNumber}",
            style: TextStyle(
              fontSize: 25,
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "07/23",
            style: TextStyle(
              fontSize: 25,
              color: Theme.of(context).accentColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
