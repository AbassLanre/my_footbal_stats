import 'package:flutter/material.dart';
import 'package:my_footbal_stats/views/Leagues/BundesligaScreen.dart';
import 'package:my_footbal_stats/views/Leagues/LaligaScreen.dart';
import 'package:my_footbal_stats/views/Leagues/SerieAScreen.dart';
import 'package:my_footbal_stats/views/Leagues/ligue1Screen.dart';
import 'package:my_footbal_stats/views/Leagues/premierLeagueScreen.dart';

enum LeaguePath{
  PremierLeague,
  LaLiga,
  Bundesliga,
  SerieA,
  Ligue1
}

class LeagueSelector{
  Widget getLeague(LeaguePath path){
    switch (path){
      case LeaguePath.PremierLeague:
        return PremierLeagueScreen();
      case LeaguePath.LaLiga:
        return LaLigaScreen();
      case LeaguePath.Bundesliga:
        return BundesligaScreen();
      case LeaguePath.SerieA:
        return SerieAScreen();
      case LeaguePath.Ligue1:
        return Ligue1Screen();
      default:
        return PremierLeagueScreen();
    }
  }
}