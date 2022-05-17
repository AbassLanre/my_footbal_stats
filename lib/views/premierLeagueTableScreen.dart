import 'package:flutter/material.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/providers/fixturesProvider.dart';
import 'package:my_footbal_stats/providers/leagueTableProvider.dart';
import 'package:my_footbal_stats/providers/newsProvider.dart';
import 'package:provider/provider.dart';


class PremierLeagueTableScreen extends StatelessWidget {
  const PremierLeagueTableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Premier League')),
      body: Container(
          padding: const EdgeInsets.all(20), child: table(context)),
    );

  }

  Widget table(BuildContext context) {
    return Consumer<FixturesProvider>(builder: (context, myTable, child) {
      if (myTable.premierLeagueFixtures?.status == Status.COMPLETED) {
        return Text("${myTable.premierLeagueFixtures?.data?[0].awayTeam}");
      }
      else if (myTable.premierLeagueFixtures?.status == Status.ERROR) {
        return Text("Error : ${myTable.premierLeagueFixtures?.message}");
      } else {
        return Text("${myTable.premierLeagueFixtures?.message}");
      }
    });
  }
}
