import 'package:flutter/material.dart';


class LeaderBoardItem extends StatelessWidget {
  const LeaderBoardItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 08),
      elevation: 4,
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 12, right: 12, top: 02),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'User Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.5,
                        color: Colors.black87),
                  ),
                  Text(
                    'Rs 40500',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.5,
                        color: Colors.black87),
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
