import 'package:flutter/material.dart';
import 'package:international_flutter_hackathon/src/shared/models/expense_model.dart';
import 'package:international_flutter_hackathon/src/shared/repositories/general_repository.dart';

class ExpenseScreen extends StatefulWidget {
  @override
  _ExpenseScreenState createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  int taps = 0;
  var list = <Expense>[];

  @override
  void initState() {
    super.initState();
    GeneralApi().getExpenses().then((val) {
      setState(() {
        list = val;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              separatorBuilder: (_, data) {
                return Divider(
                  color: Color(0xff736ff4),
                );
              },
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                final String amount =
                    list[index].amount.toString().replaceAll('-', '');

                return Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "R\$$amount",
                            style: TextStyle(fontSize: 25, color: Color(0xffff9e80)),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            list[index].description,
                            style: TextStyle(fontSize: 16,color: Color(0xff736ff4)),
                          ),
                          Text(
                            "${list[index].timestamp.toString().substring(0,10)}",
                             style: TextStyle(fontSize: 16, color: Color(0xff3AD29F)),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
