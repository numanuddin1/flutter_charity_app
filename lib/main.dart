import 'package:flutter/material.dart';
import 'package:flutter_practice3/ui%20screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins'
      ),
      home: MyHomePage(title: 'Flutter Practice'),
    );
  }
}


