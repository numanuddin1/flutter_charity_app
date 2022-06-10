// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Color(0xFF87E47C),
          borderRadius:
          BorderRadius.all(Radius.circular(14))),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Testing',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10)),
          Text(
              'Testing,TestingTestingTestingTestingTestingTestingTestingTesting,TestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTesting',
              style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
