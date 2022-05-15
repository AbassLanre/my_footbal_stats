import 'package:flutter/material.dart';
import 'package:my_footbal_stats/providers/premierLeagueTableProvider.dart';
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
        ChangeNotifierProvider(create: (context)=> PremierLeagueTableProvider())
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
