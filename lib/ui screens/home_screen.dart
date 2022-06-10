// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practice3/widgets/news.dart';
import 'package:flutter_practice3/widgets/target_monthly.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/card.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Color appColor = Color(0xFF87E47C);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .28,
            color: appColor,
            padding: EdgeInsets.all(20),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 60),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Numan Uddin",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "testid123@gmail.com",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 14),
                      child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        crossAxisCount: 3,
                        children: [
                          CardWidget(
                            title: 'Donate',
                          ),
                          CardWidget(
                            title: 'Sadqat',
                          ),
                          CardWidget(
                            title: 'Maonthly',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 16),

                    child: TargetItem(),
                  )),
                  Expanded(flex: 3, child: NewsItem()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
