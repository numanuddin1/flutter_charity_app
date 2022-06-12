// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice3/ui%20screens/payment_method_screen.dart';

import '../widgets/card_history.dart';
import '../widgets/card_profile.dart';

class AmountScreen extends StatefulWidget {
  @override
  State<AmountScreen> createState() => _AmountScreenState();
}

class _AmountScreenState extends State<AmountScreen> {
  TextEditingController _amountController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  DatabaseReference ref = FirebaseDatabase.instance.ref();
  Future setValue(value) async {

    await ref.child('Test').child("test").set('Working $value');
  }
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
                  'Select Amount',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
              ],
            ), // Name text
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.network(
                'https://images.squarespace-cdn.com/content/v1/52ade8d9e4b0324b1f6441ef/1580854622970-9RWMCYU5WHV7QS05ROJD/Make-a-Donation.png?format=1000w',
                height: 250,
              ),
            ),
            AmountButton(
              title: 'Rs 50',
              appColor: appColor,
              onTap: (){
                setState(() {
                  setValue(50);
                });
              }
            ),
            AmountButton(
              title: 'Rs 100',
              appColor: appColor,
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return PaymentScreen(amount: 100,);
              })),
            ),
            AmountButton(
              title: 'Rs 200',
              appColor: appColor,
              onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return PaymentScreen(amount: 200,);
              })),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'OR',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: "Enter here",
                    prefixIcon: Icon(Icons.money_outlined)),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22.0),
              child: AmountButton(title: 'Next', appColor: appColor, onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return PaymentScreen(amount: int.parse(_amountController.text));
              })),),
            ),
          ],
        ),
      ),
    );
  }
}

class AmountButton extends StatelessWidget {
  const AmountButton({
    Key? key,
    required this.appColor,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final Color appColor;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 118.0),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      onPressed: onTap,
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
