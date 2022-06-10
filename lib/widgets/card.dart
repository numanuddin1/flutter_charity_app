import 'package:flutter/material.dart';

import '../ui screens/payment_screen.dart';

class CardWidget extends StatelessWidget {
  final String title;

  CardWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => PaymentScreen(title: title),
        ));
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/donate.png',
              height: 40,
            ),
            // CircleAvatar(
            //   radius: 24,
            //   backgroundImage: NetworkImage(
            //       'https://flyclipart.com/thumb2/donation-icons-download-free-png-and-vector-icons-unlimited-713100.png'),
            // ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Text(title),
          ],
        ),
      ),
    );
  }
}

