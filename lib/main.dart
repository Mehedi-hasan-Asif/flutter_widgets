import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expanded"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.purple,
                    child: Center(child: Text("1")),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.amber,
                    child: Center(child: Text("2")),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.deepOrange,
                    child: Center(child: Text("3")),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
