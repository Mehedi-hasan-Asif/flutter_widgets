import 'package:flutter/material.dart';

class AccountManager extends StatelessWidget {
  const AccountManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Card(
        elevation: 6,
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text("VISA", style: TextStyle(color: Colors.white)),
          ),
          title: Text("Current Account"),
          subtitle: Text("....2354"),
          trailing: Container(
            height: 25,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsetsGeometry.only(left: 4)),
                Text("Manage", style: TextStyle(color: Colors.white)),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
