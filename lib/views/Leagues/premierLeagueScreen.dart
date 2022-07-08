import 'package:flutter/material.dart';
import 'package:my_footbal_stats/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_footbal_stats/views/Leagues/BundesligaScreen.dart';
import 'package:my_footbal_stats/views/Leagues/LaligaScreen.dart';
import 'package:my_footbal_stats/views/Leagues/News.dart';
import 'package:my_footbal_stats/views/Leagues/SerieAScreen.dart';
import 'package:my_footbal_stats/views/Leagues/ligue1Screen.dart';
import 'package:my_footbal_stats/views/Table.dart';
import 'package:my_footbal_stats/views/fixtures.dart';
import 'package:my_footbal_stats/views/results.dart';

class PremierLeagueScreen extends StatefulWidget {
  const PremierLeagueScreen({Key? key}) : super(key: key);

  @override
  State<PremierLeagueScreen> createState() => _PremierLeagueScreenState();
}

class _PremierLeagueScreenState extends State<PremierLeagueScreen>
    with SingleTickerProviderStateMixin {
  String selectedLeague = "PremierLeague";
  TabController? _tabController;

  List<DropdownMenuItem<String>> get leagues {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Premier League"), value: "PremierLeague"),
      DropdownMenuItem(child: Text("Serie A"), value: "SerieA"),
      DropdownMenuItem(child: Text("Bundesliga"), value: "Bundesliga"),
      DropdownMenuItem(child: Text("Ligue 1"), value: "Ligue1"),
      DropdownMenuItem(child: Text("La Liga"), value: "LaLiga"),
    ];
    return menuItems;
  }

  final List<Widget> _list = <Widget>[
    Center(child: Text('ff')),
    Center(child: Text("ff")),
    Center(child: LeagueResults()),
    Center(child: LeagueFixtures()),
  ];
  int _curr = 0;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
              children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 5.sp),
              height: height * 0.2,
              decoration: BoxDecoration(
                color: kPremierLeague1,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton(
                      iconEnabledColor: Colors.white,
                      dropdownColor: kPremierLeague3,
                      style: kSecondaryFont.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Cardo"),
                      items: leagues,
                      value: selectedLeague,
                      onChanged: (String? newLeague) {
                        if (selectedLeague != newLeague!) {
                          setState(() {
                            selectedLeague = newLeague;
                          });
                          if (selectedLeague == "PremierLeague") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => PremierLeagueScreen()));
                          } else if (selectedLeague == "LaLiga") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => LaLigaScreen()));
                          } else if (selectedLeague == "SerieA") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => SerieAScreen()));
                          } else if (selectedLeague == "Bundesliga") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => BundesligaScreen()));
                          } else if (selectedLeague == "Ligue1") {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => Ligue1Screen()));
                          }
                        }
                      }),
                  Container(
                    height: 127.h,
                    width: 127.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/prem1.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.8,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: kPremierLeague3
                    ),
                    child: TabBar(
                      unselectedLabelColor: Colors.black45,
                      labelColor: Colors.black,
                      tabs: const [
                        Tab(text: 'News'),
                        Tab(text: 'Table'),
                        Tab(text: 'Results'),
                        Tab(text: 'Fixtures'),
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ),
                  Expanded(
                    child:
                        TabBarView(controller: _tabController, children: _list),
                  ),
                ],
              ),
            ),
                const SizedBox(height: 15,)

              ]),
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
