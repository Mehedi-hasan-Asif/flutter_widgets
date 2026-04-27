import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("$index"));
        },
        // body: ListView(
        //   children: [
        //     Container(color: Colors.red, height: 100),
        //     Divider(),
        //     Container(color: Colors.orange, height: 100),
        //     Divider(),
        //     Container(color: Colors.purple, height: 100),
        //     Divider(),
        //     Container(color: Colors.amber, height: 100),
        //     Divider(),
        //     Container(color: Colors.greenAccent, height: 100),
        //     Divider(),
        //     Container(color: Colors.indigo, height: 100),
        //     Divider(),
        //     Container(color: Colors.green, height: 100),
        //     Divider(),
        //     Container(color: Colors.limeAccent, height: 100),
        //   ],
      ),
    );
  }
}
