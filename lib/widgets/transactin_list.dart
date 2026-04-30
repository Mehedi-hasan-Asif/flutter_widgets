import 'package:flutter/material.dart';
import 'package:hello/model/transaction_model.dart';

class TransactionList extends StatelessWidget {
  TransactionList({super.key});
  List<TransactionModel> transaction = [
    TransactionModel(
      title: "Spotify Premium",
      subtitle: "Expense",
      iconData: Icons.cases,
      amount: 9.99,
    ),
    TransactionModel(
      title: "Salary",
      subtitle: "Income",
      iconData: Icons.money,
      amount: 3245.65,
    ),
    TransactionModel(
      title: "Electricity",
      subtitle: "Expense",
      iconData: Icons.lightbulb,
      amount: 57.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transaction.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(transaction[index].iconData),
          title: Text(transaction[index].title!),
          subtitle: Text(transaction[index].subtitle!),
          trailing: Text("\$ ${transaction[index].amount}"),
        );
      },
    );
  }
}
