// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatefulWidget {
  const NewsItem({Key? key}) : super(key: key);

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                padding: EdgeInsets.symmetric(vertical: 06)),
            Text(
                'TestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTestingTesting',
                style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
