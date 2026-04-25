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
          title: Text("Row & Column"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              //Horizontal
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text("Hi", style: TextStyle(color: Colors.white)),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text("Naina", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              //Vertical
              Column(


                children: [
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.orange,
                    alignment: Alignment.center,
                    child: Text(
                      "Hi ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.purple,
                    alignment: Alignment.center,
                    child: Text(
                      "Rahul",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
