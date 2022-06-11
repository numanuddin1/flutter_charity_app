import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          ),
          Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25, top: 06),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Monthly Target',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13.5,
                        color: Colors.black54),
                  ),
                  Text('56.7% Completed',
                      style: TextStyle(fontSize: 11.5, color: Colors.black54)),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 05),
                    height: 6.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        value: .567,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xFF7AF168)),
                        backgroundColor: Color(0xFFC7FDC0),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Donations',
                          style:
                              TextStyle(fontSize: 12, color: Colors.black54)),
                      Text('54374',
                          style:
                              TextStyle(fontSize: 12, color: Colors.black54)),
                    ],
                  )
                ],
              ),
            ),
          ),
          Text('data')
        ],
      ),
    );
  }
}
