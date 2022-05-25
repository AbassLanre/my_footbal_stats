import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_footbal_stats/providers/fixturesProvider.dart';
import 'package:my_footbal_stats/providers/leagueTableProvider.dart';
import 'package:my_footbal_stats/providers/newsProvider.dart';
import 'package:my_footbal_stats/views/homepage.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent
          //color set to transperent or set your own color
        )
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> LeagueTableProvider()),
        ChangeNotifierProvider(create: (context)=> NewsProvider()),
        ChangeNotifierProvider(create: (context)=> FixturesProvider()),

      ],
      child: ScreenUtilInit(
        builder:(context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Cardo',
              primarySwatch: Colors.grey,
            ),
            home: HomePageScreen(),
          );
        }
      ),
    );
  }
}
