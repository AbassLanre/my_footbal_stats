

import 'package:flutter/material.dart';
import 'package:my_footbal_stats/constants.dart';

class BundesligaScreen extends StatefulWidget {
  const BundesligaScreen({Key? key}) : super(key: key);

  @override
  State<BundesligaScreen> createState() => _BundesligaScreenState();
}

class _BundesligaScreenState extends State<BundesligaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPremierLeague2,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 200,
                decoration: BoxDecoration(
                  color: kPremierLeague1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownButton(
                        items: null,
                        onChanged: null),
                    Container(),
                    Text('Prem',style: kBodyFont,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );

  }

// Widget table(BuildContext context) {
//   return Consumer<FixturesProvider>(builder: (context, myTable, child) {
//     if (myTable.premierLeagueFixtures?.status == Status.COMPLETED) {
//       return Text("${myTable.premierLeagueFixtures?.data?[0].awayTeam}");
//     }
//     else if (myTable.premierLeagueFixtures?.status == Status.ERROR) {
//       return Text("Error : ${myTable.premierLeagueFixtures?.message}");
//     } else {
//       return Text("it's ${myTable.premierLeagueFixtures?.message}");
//     }
//   });
// }

}
