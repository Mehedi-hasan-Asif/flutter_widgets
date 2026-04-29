import 'package:flutter/material.dart';
import 'package:hello/widgets/credit_card.dart';
import 'package:hello/widgets/current_account.dart';

import '../widgets/account_manager.dart';



class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              image: NetworkImage("https://picsum.photos/200"),
            ),
          ),
        ),
        actions: [
          Padding(padding: EdgeInsets.all(8.0)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.indigo),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CurrentAccount(),
          CreditCard(),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: AccountManager(),
          )
        ],
      ),
    );
  }
}
