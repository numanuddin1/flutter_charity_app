import 'package:flutter/material.dart';

import '../widgets/card_history.dart';
import '../widgets/card_profile.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Image.network('https://images.squarespace-cdn.com/content/v1/52ade8d9e4b0324b1f6441ef/1580854622970-9RWMCYU5WHV7QS05ROJD/Make-a-Donation.png?format=1000w', height: 250,),
        ),
        Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 60)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  'Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
              ],
            ), // Name text
            ProfileCard(), // profile card
            Padding(
              padding: EdgeInsets.only(top: 30.0, bottom: 15, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Transaction History',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ), // transaction history text
            HistoryItem(), // Transaction history card
          ],
        ),
      ]),
    );
  }
}
