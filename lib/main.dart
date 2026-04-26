import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Image.asset(
            "images/app.jpg",
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}