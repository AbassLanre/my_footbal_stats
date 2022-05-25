import 'package:flutter/material.dart';
import 'package:my_footbal_stats/constants.dart';
import 'package:my_footbal_stats/views/Leagues/BundesligaScreen.dart';
import 'package:my_footbal_stats/views/Leagues/LaligaScreen.dart';
import 'package:my_footbal_stats/views/Leagues/SerieAScreen.dart';
import 'package:my_footbal_stats/views/Leagues/ligue1Screen.dart';
import 'package:my_footbal_stats/views/Leagues/premierLeagueScreen.dart';



class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  String selectedLeague = "PremierLeague";
  List<DropdownMenuItem<String>> get leagues{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Premier League",),value: "PremierLeague"),
      DropdownMenuItem(child: Text("Serie A",),value: "SerieA"),
      DropdownMenuItem(child: Text("Bundesliga"),value: "Bundesliga"),
      DropdownMenuItem(child: Text("Ligue 1"),value: "Ligue1"),
      DropdownMenuItem(child: Text("La Liga"),value: "LaLiga"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/home.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Center(
            child: DropdownButton(
              iconEnabledColor: Colors.white,
              dropdownColor: Colors.black,
              style: kLargeFont.copyWith(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Cardo"),
                items: leagues,
                value: selectedLeague,
                onChanged: (String? newLeague){
                  setState((){
                    selectedLeague = newLeague!;
                  });
                  if (selectedLeague == "PremierLeague"){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_)=>PremierLeagueScreen()));
                  }else if(selectedLeague== "LaLiga"){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_)=>LaLigaScreen()));
                  }else if(selectedLeague== "SerieA"){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_)=>SerieAScreen()));
                  }else if(selectedLeague== "Bundesliga"){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_)=>BundesligaScreen()));
                  }else if(selectedLeague== "Ligue1"){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_)=>Ligue1Screen()));
                  }

                }),
          ),
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
