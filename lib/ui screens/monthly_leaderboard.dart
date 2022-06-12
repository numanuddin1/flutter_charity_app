import 'package:flutter/material.dart';
import 'package:flutter_practice3/widgets/leaderboard_item.dart';

class MonthlyLeaderBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
            children: [
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: Center(
                            child: Text(
                              'Monthly LeaderBoard',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ],
                  ), // Name text
                ],
              ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Image.network(
                'https://images.squarespace-cdn.com/content/v1/52ade8d9e4b0324b1f6441ef/1580854622970-9RWMCYU5WHV7QS05ROJD/Make-a-Donation.png?format=1000w',
                height: 200,
              ),
            ),
          ),

          LeaderBoardItem(),
          LeaderBoardItem(),
          LeaderBoardItem(),
        ]),
      ]),
    );
  }
}
