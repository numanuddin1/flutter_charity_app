// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../widgets/card_history.dart';
import '../widgets/card_profile.dart';

class PaymentScreen extends StatefulWidget {
  final int amount;
  PaymentScreen({required this.amount});
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    Color appColor = Color(0xFF87E47C);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                      'Payment method ${widget.amount}',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )),
              ],
            ),// Name text
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.network('https://images.squarespace-cdn.com/content/v1/52ade8d9e4b0324b1f6441ef/1580854622970-9RWMCYU5WHV7QS05ROJD/Make-a-Donation.png?format=1000w', height: 250,),
            ),
            AmountButton(title: 'EasyPaisa',appColor: appColor),
            AmountButton(title: 'Jazz Cash',appColor: appColor),
            AmountButton(title: '  UPaisa  ',appColor: appColor),

          ],
        ),
      ),
    );
  }
}

class AmountButton extends StatelessWidget {
  const AmountButton({
    Key? key,
    required this.appColor, required this.title,
  }) : super(key: key);

  final Color appColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 118.0),
        child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      onPressed: () => print("it's pressed"),
      style: ElevatedButton.styleFrom(
        primary: appColor,
        onPrimary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.0),
        ),
      ),
    );
  }
}

