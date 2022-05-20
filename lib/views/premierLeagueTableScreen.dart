import 'package:flutter/material.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/providers/fixturesProvider.dart';
import 'package:my_footbal_stats/providers/leagueTableProvider.dart';
import 'package:my_footbal_stats/providers/newsProvider.dart';
import 'package:provider/provider.dart';


class PremierLeagueTableScreen extends StatefulWidget {
  const PremierLeagueTableScreen({Key? key}) : super(key: key);

  @override
  State<PremierLeagueTableScreen> createState() => _PremierLeagueTableScreenState();
}

class _PremierLeagueTableScreenState extends State<PremierLeagueTableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
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
