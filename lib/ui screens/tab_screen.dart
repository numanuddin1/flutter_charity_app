// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_practice3/ui%20screens/home_screen.dart';
import 'package:flutter_practice3/ui%20screens/payment_screen.dart';

class TabScreen extends StatefulWidget {


  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, dynamic>> _pages = [
    {'page': MyHomePage(), 'title': 'Home Screen'},
    {'page': PaymentScreen(), 'title': 'Payment Screen'},
  ];
  int selectedPageIndex = 0;

  void selectedPage(int index){
    setState(() {
      selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPageIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: selectedPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
