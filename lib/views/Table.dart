import 'package:flutter/material.dart';
import 'package:my_footbal_stats/constants.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/providers/leagueTableProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeagueTable extends StatefulWidget {
  const LeagueTable({Key? key}) : super(key: key);

  @override
  State<LeagueTable> createState() => _LeagueTableState();
}

class _LeagueTableState extends State<LeagueTable> {
  // String selectedLeague = "38";
  // bool picked = false;
  //
  // List<DropdownMenuItem<String>> get leagues {
  //   List<DropdownMenuItem<String>> menuItems = [
  //     for (var i = 1; i<=38; i++) DropdownMenuItem(child: Text(i.toString()), value: i.toString()),
  //
  //   ];
  //   return menuItems;
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: premierTable(context),
    );
  }
}

Widget premierTable(BuildContext context) {
  final double width = MediaQuery.of(context).size.width;
  return Consumer<LeagueTableProvider>(builder: (context, myTable, child) {
    if (myTable.premierLeagueTable?.status == Status.COMPLETED) {
      return ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 10, top: 15),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      'POS',
                      style: kTertiaryFont.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: width.w * 0.05),
                    Text(
                      'Club',
                      style: kTertiaryFont.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              // SizedBox(width: width.w * 0.1),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'P',
                      style: kTertiaryFont.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'W',
                      style: kTertiaryFont.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'L',
                      style: kTertiaryFont.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'D',
                      style: kTertiaryFont.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'GD',
                      style: kTertiaryFont.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'PTS',
                      style: kTertiaryFont.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: width.w * 0.01),

                  ],
                ),
              ),

            ],
          ),
          ListView.builder(
            itemCount: 20,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                              "${myTable.premierLeagueTable?.data?[index].position}",style: kTertiaryFont,),
                          SizedBox(width: width.w * 0.05),
                          Row(
                            children: [
                              Container(
                                height: 18.h,
                                width: 18.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage("${myTable.premierLeagueTable?.data?[index].squadLogo}")
                                    )
                                ),
                              ),
                              Text(
                                "${myTable.premierLeagueTable?.data?[index].name}",style: kTertiaryFont,),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "${myTable.premierLeagueTable?.data?[index].played}",style: kTertiaryFont,),
                          Text(
                            "${myTable.premierLeagueTable?.data?[index].won}",style: kTertiaryFont,),
                          Text(
                            "${myTable.premierLeagueTable?.data?[index].lost}",style: kTertiaryFont,),
                          Text(
                            "${myTable.premierLeagueTable?.data?[index].draw}",style: kTertiaryFont,),
                          Text(
                            "${myTable.premierLeagueTable?.data?[index].goalDifference}",style: kTertiaryFont,),
                          Text(
                            "${myTable.premierLeagueTable?.data?[index].points}",style: kTertiaryFont,),
                          SizedBox(width: width.w * 0.01),

                        ],
                      ),
                    ),
],
                ),
              );
            },
          )
        ],
      );
    } else if (myTable.premierLeagueTable?.status == Status.ERROR) {
      return Text("Error : ${myTable.premierLeagueTable?.message}");
    } else {
      return Text("it's ${myTable.premierLeagueTable?.message}");
    }
  });
}

Widget laLigaTable(BuildContext context) {
  final double width = MediaQuery.of(context).size.width;
  return Consumer<LeagueTableProvider>(builder: (context, myTable, child) {
    if (myTable.laLigaTable?.status == Status.COMPLETED) {
      return ListView(
        padding: const EdgeInsets.only(left: 10, top: 15),
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'POS',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'Club',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              SizedBox(width: width.w * 0.1),
              Expanded(
                  child: Text(
                'P',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'W',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'L',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'D',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'GD',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'PTS',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
            ],
          ),
          ListView.builder(
            itemCount: 20,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                            "${myTable.laLigaTable?.data?[index].position}")),
                    Expanded(
                        child: Container(
                          height: 50.h,
                          width: 50.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("${myTable.laLigaTable?.data?[index].squadLogo}")
                            )
                          ),
                        )),
                    Expanded(
                        child:
                            Text("${myTable.laLigaTable?.data?[index].name}")),
                    SizedBox(width: width.w * 0.1),
                    Expanded(
                        child: Text(
                            "${myTable.laLigaTable?.data?[index].played}")),
                    Expanded(
                        child:
                            Text("${myTable.laLigaTable?.data?[index].won}")),
                    Expanded(
                        child:
                            Text("${myTable.laLigaTable?.data?[index].lost}")),
                    Expanded(
                        child:
                            Text("${myTable.laLigaTable?.data?[index].draw}")),
                    Expanded(
                        child: Text(
                            "${myTable.laLigaTable?.data?[index].goalDifference}")),
                    Expanded(
                        child: Text(
                            "${myTable.laLigaTable?.data?[index].points}")),
                  ],
                ),
              );
            },
          )
        ],
      );
    } else if (myTable.laLigaTable?.status == Status.ERROR) {
      return Text("Error : ${myTable.laLigaTable?.message}");
    } else {
      return Text("it's ${myTable.laLigaTable?.message}");
    }
  });
}

Widget BundesligaTable(BuildContext context) {
  final double width = MediaQuery.of(context).size.width;
  return Consumer<LeagueTableProvider>(builder: (context, myTable, child) {
    if (myTable.bundesligaTable?.status == Status.COMPLETED) {
      return ListView(
        padding: const EdgeInsets.only(left: 10, top: 15),
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'POS',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'Club',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              SizedBox(width: width.w * 0.1),
              Expanded(
                  child: Text(
                'P',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'W',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'L',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'D',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'GD',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'PTS',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
            ],
          ),
          ListView.builder(
            itemCount: 20,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                            "${myTable.bundesligaTable?.data?[index].position}")),
                    Expanded(
                        child: Text(
                            "${myTable.bundesligaTable?.data?[index].name}")),
                    SizedBox(width: width.w * 0.1),
                    Expanded(
                        child: Text(
                            "${myTable.bundesligaTable?.data?[index].played}")),
                    Expanded(
                        child: Text(
                            "${myTable.bundesligaTable?.data?[index].won}")),
                    Expanded(
                        child: Text(
                            "${myTable.bundesligaTable?.data?[index].lost}")),
                    Expanded(
                        child: Text(
                            "${myTable.bundesligaTable?.data?[index].draw}")),
                    Expanded(
                        child: Text(
                            "${myTable.bundesligaTable?.data?[index].goalDifference}")),
                    Expanded(
                        child: Text(
                            "${myTable.bundesligaTable?.data?[index].points}")),
                  ],
                ),
              );
            },
          )
        ],
      );
    } else if (myTable.bundesligaTable?.status == Status.ERROR) {
      return Text("Error : ${myTable.bundesligaTable?.message}");
    } else {
      return Text("it's ${myTable.bundesligaTable?.message}");
    }
  });
}

Widget SerieATable(BuildContext context) {
  final double width = MediaQuery.of(context).size.width;
  return Consumer<LeagueTableProvider>(builder: (context, myTable, child) {
    if (myTable.serieATable?.status == Status.COMPLETED) {
      return ListView(
        padding: const EdgeInsets.only(left: 10, top: 15),
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'POS',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'Club',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              SizedBox(width: width.w * 0.1),
              Expanded(
                  child: Text(
                'P',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'W',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'L',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'D',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'GD',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'PTS',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
            ],
          ),
          ListView.builder(
            itemCount: 20,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                            "${myTable.serieATable?.data?[index].position}")),
                    Expanded(
                        child:
                            Text("${myTable.serieATable?.data?[index].name}")),
                    SizedBox(width: width.w * 0.1),
                    Expanded(
                        child: Text(
                            "${myTable.serieATable?.data?[index].played}")),
                    Expanded(
                        child:
                            Text("${myTable.serieATable?.data?[index].won}")),
                    Expanded(
                        child:
                            Text("${myTable.serieATable?.data?[index].lost}")),
                    Expanded(
                        child:
                            Text("${myTable.serieATable?.data?[index].draw}")),
                    Expanded(
                        child: Text(
                            "${myTable.serieATable?.data?[index].goalDifference}")),
                    Expanded(
                        child: Text(
                            "${myTable.serieATable?.data?[index].points}")),
                  ],
                ),
              );
            },
          )
        ],
      );
    } else if (myTable.serieATable?.status == Status.ERROR) {
      return Text("Error : ${myTable.serieATable?.message}");
    } else {
      return Text("it's ${myTable.serieATable?.message}");
    }
  });
}

Widget Ligue1Table(BuildContext context) {
  final double width = MediaQuery.of(context).size.width;
  return Consumer<LeagueTableProvider>(builder: (context, myTable, child) {
    if (myTable.ligue1Table?.status == Status.COMPLETED) {
      return ListView(
        padding: const EdgeInsets.only(left: 10, top: 15),
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                'POS',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'Club',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              SizedBox(width: width.w * 0.1),
              Expanded(
                  child: Text(
                'P',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'W',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'L',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'D',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'GD',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
              Expanded(
                  child: Text(
                'PTS',
                style: kSecondaryFont.copyWith(fontWeight: FontWeight.bold),
              )),
            ],
          ),
          ListView.builder(
            itemCount: 20,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                            "${myTable.ligue1Table?.data?[index].position}")),
                    Expanded(
                        child:
                            Text("${myTable.ligue1Table?.data?[index].name}")),
                    SizedBox(width: width.w * 0.1),
                    Expanded(
                        child: Text(
                            "${myTable.ligue1Table?.data?[index].played}")),
                    Expanded(
                        child:
                            Text("${myTable.ligue1Table?.data?[index].won}")),
                    Expanded(
                        child:
                            Text("${myTable.ligue1Table?.data?[index].lost}")),
                    Expanded(
                        child:
                            Text("${myTable.ligue1Table?.data?[index].draw}")),
                    Expanded(
                        child: Text(
                            "${myTable.ligue1Table?.data?[index].goalDifference}")),
                    Expanded(
                        child: Text(
                            "${myTable.ligue1Table?.data?[index].points}")),
                  ],
                ),
              );
            },
          )
        ],
      );
    } else if (myTable.ligue1Table?.status == Status.ERROR) {
      return Text("Error : ${myTable.ligue1Table?.message}");
    } else {
      return Text("it's ${myTable.ligue1Table?.message}");
    }
  });
}
