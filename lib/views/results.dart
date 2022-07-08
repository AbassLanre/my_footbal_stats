
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/providers/resultsProvider.dart';
import 'package:provider/provider.dart';

class LeagueResults extends StatefulWidget {
  const LeagueResults({Key? key}) : super(key: key);

  @override
  State<LeagueResults> createState() => _LeagueResultsState();
}

class _LeagueResultsState extends State<LeagueResults> {
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
    var resProv = Provider.of<ResultsProvider>(context, listen: false);
    Widget widgee= premierLeagueResults(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          DropdownButton(
              items: leagues,
              value: selectedDay,
              onChanged: (String? newRes){
                selectedDay = newRes!;
                resProv.fetchPremierLeagueResults(newRes);
                if(newRes!="0"){
                  setState((){
                    widgee = premierLeagueResults(context);
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

Widget premierLeagueResults(BuildContext context) {
  return Consumer<ResultsProvider>(builder: (context, myTable, child) {
    if (myTable.premierLeagueResult?.status == Status.COMPLETED) {
      return ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: myTable.premierLeagueResult?.data!.length,
          itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Text("${myTable.premierLeagueResult?.data![index].MatchDay}"),
                      SizedBox(height: 5.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  height: 18.h,
                                  width: 18.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage("${myTable.premierLeagueResult?.data![index].homeLogo}")
                                      )
                                  ),
                                ),
                                SizedBox(width: 3.w,),
                                Flexible(child: Text("${myTable.premierLeagueResult?.data![index].homeTeam}")),

                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text("${myTable.premierLeagueResult?.data![index].homeTeamScore}"),
                              const Text("vs"),
                              Text("${myTable.premierLeagueResult?.data![index].awayTeamScore}"),

                            ],
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                SizedBox(width: 30.w,),
                                Container(
                                  height: 18.h,
                                  width: 18.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage("${myTable.premierLeagueResult?.data![index].awayLogo}")
                                      )
                                  ),
                                ),
                                SizedBox(width: 3.w,),
                                Flexible(child: Text("${myTable.premierLeagueResult?.data![index].awayTeam}")),



                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 5.h,),
                    ],
                  ),
                ),
              ),
            );
          });
    }
    else if (myTable.premierLeagueResult?.status == Status.ERROR) {
      return Text("Error : ${myTable.premierLeagueResult?.message}");
    } else {
      return Text("it's ${myTable.premierLeagueResult?.message}");
    }
  });
}

