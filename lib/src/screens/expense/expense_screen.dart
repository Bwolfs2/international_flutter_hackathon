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
      appBar: AppBar(title: Text("Expenses")),
      body: list.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                final String amount =
                    list[index].amount.toString().replaceAll('-', '');

                return ListTile(
                    title: new Text("R\$$amount"),
                    subtitle: new Text(list[index].description));
              },
            ),
    );
  }
}
