import 'package:flutter/material.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/providers/premierLeagueTableProvider.dart';
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
    return Consumer<PremierLeagueTableProvider>(builder: (context, myTable, child) {
      if (myTable.premierLeagueTable?.status == Status.COMPLETED) {
        return Text("${myTable.premierLeagueTable?.data?[0].name}");
      }
      else if (myTable.premierLeagueTable?.status == Status.ERROR) {
        return Text("Error : ${myTable.premierLeagueTable?.message}");
      } else {
        return Text("${myTable.premierLeagueTable?.message}");
      }
    });
  }
}
