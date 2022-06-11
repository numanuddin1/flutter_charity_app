import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_practice3/ui%20screens/home_screen.dart';
import 'package:flutter_practice3/ui%20screens/tab_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Color(0xFF87E47C),
        fontFamily: 'Poppins'
      ),
      home:  TabScreen(),
    );
  }
}


