import 'package:flutter/material.dart';

import '../ui screens/amount_screen.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback onTap;

  CardWidget({Key? key, required this.title, required this.image, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Image.asset(
              image,
              height: 30,
            ),
            // CircleAvatar(
            //   radius: 24,
            //   backgroundImage: NetworkImage(
            //       'https://flyclipart.com/thumb2/donation-icons-download-free-png-and-vector-icons-unlimited-713100.png'),
            // ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Text(title),
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
          ],
        ),
      ),
    );
  }
}

