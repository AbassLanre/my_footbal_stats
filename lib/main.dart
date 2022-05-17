import 'package:flutter/material.dart';
import 'package:my_footbal_stats/providers/fixturesProvider.dart';
import 'package:my_footbal_stats/providers/leagueTableProvider.dart';
import 'package:my_footbal_stats/providers/newsProvider.dart';
import 'package:my_footbal_stats/views/premierLeagueTableScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> LeagueTableProvider()),
        ChangeNotifierProvider(create: (context)=> NewsProvider()),
        ChangeNotifierProvider(create: (context)=> FixturesProvider()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PremierLeagueTableScreen(),
      ),
    );
  }
}
