import 'package:flutter/material.dart';
import 'package:hello/screens/analytics_screen.dart';
import 'package:hello/screens/help_screen.dart';
import 'package:hello/screens/history_screen.dart';
import 'package:hello/screens/my_home_screen.dart';
import 'package:hello/screens/payment_screen.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 0;
  List<Widget> Screens = [
    MyHomeScreen(),
    PaymentScreen(),
    AnalyticsScreen(),
    HIstoryScreen(),
    HelpScreen(),
  ];
  void changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.grey),

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.payments_sharp),
            label: "Payment",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: "Analytics",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: "Help"),
        ],
        currentIndex: _currentIndex,
        onTap: changeIndex,
      ),
    );
  }
}
