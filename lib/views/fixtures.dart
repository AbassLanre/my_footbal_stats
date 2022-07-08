import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/providers/fixturesProvider.dart';
import 'package:provider/provider.dart';


class LeagueFixtures extends StatefulWidget {
  const LeagueFixtures({Key? key}) : super(key: key);

  @override
  State<LeagueFixtures> createState() => _LeagueFixturesState();
}

class _LeagueFixturesState extends State<LeagueFixtures> {
  String selectedDay = "38";

  bool picked = false;


  List<DropdownMenuItem<String>> get leagues {
    List<DropdownMenuItem<String>> menuItems = [
      for (var i = 1; i<=38; i++) DropdownMenuItem(child: Text(i.toString()), value: i.toString()),

    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    var resProv = Provider.of<FixturesProvider>(context, listen: false);
    Widget widgee= premierLeagueFixtures(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          DropdownButton(
              items: leagues,
              value: selectedDay,
              onChanged: (String? newRes){
                selectedDay = newRes!;
                resProv.fetchPremierLeagueFixtures(newRes);
                if(newRes!="0"){
                  setState((){
                    widgee = premierLeagueFixtures(context);
                  });
                }
              }
          ),
          widgee,
        ],
      ),
    );
  }
}

Widget premierLeagueFixtures(BuildContext context) {

  return Consumer<FixturesProvider>(builder: (context, myTable, child) {
    if (myTable.premierLeagueFixtures?.status == Status.COMPLETED) {
      return ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: myTable.premierLeagueFixtures?.data!.length,
          itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                margin:const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Center(child: Text("${myTable.premierLeagueFixtures?.data![index].MatchDay}")),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 18.h,
                              width: 18.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage("${myTable.premierLeagueFixtures?.data![index].homeLogo}")
                                  )
                              ),
                            ),
                            Text("${myTable.premierLeagueFixtures?.data![index].homeLogo}"),

                          ],
                        ),
                        SizedBox(width: 10.w,),
                        const Text("vs"),
                        SizedBox(width: 10.w,),
                        Row(
                          children: [
                            Container(
                              height: 18.h,
                              width: 18.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage("${myTable.premierLeagueFixtures?.data![index].awayLogo}")
                                  )
                              ),
                            ),
                            Text("${myTable.premierLeagueFixtures?.data![index].awayTeam}"),

                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          });
    }
    else if (myTable.premierLeagueFixtures?.status == Status.ERROR) {
      return Text("Error : ${myTable.premierLeagueFixtures?.message}");
    } else {
      return Text("it's ${myTable.premierLeagueFixtures?.message}");
    }
  });
}

