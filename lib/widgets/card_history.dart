import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color appColor = Color(0xFF87E47C);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      elevation: 4,
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(left: 12, right: 12, top: 02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '6/12/2022',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11.5,
                        color: Colors.black54),
                  ),
                  Text(
                    'Sadqa',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.5,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rs 200',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.5,
                        color: Colors.black87),
                  ),
                  Text(
                    'Easypaisa',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.5,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Status',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.5,
                        color: Colors.black87),
                  ),
                  Text(
                    'Completed',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.5,
                        color: appColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}