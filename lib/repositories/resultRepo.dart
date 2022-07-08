
import 'package:flutter/material.dart';

import 'package:my_footbal_stats/models/results_model.dart';
import 'package:my_footbal_stats/network_modules/api_path.dart';
import 'package:my_footbal_stats/network_modules/http_client.dart';

class ResultRepository{

  Future<List<PremierLeagueResults>> fetchPremierLeagueResults(String? matchDay) async{
    print(matchDay);
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.premierLeagueResults));
    // the result was nested in matchday 38
    List<Map<String, dynamic>> map = [];
    map = List<Map<String, dynamic>>.from(response);
    debugPrint("--------------------------Response - ${map[0][" Matchday $matchDay "]}");
    final lists = <PremierLeagueResults>[];
    for(var item in map[0][" Matchday $matchDay "]){
      final list = PremierLeagueResults.fromJson(item);
      lists.add(list);
    }
    return lists;
  }


  Future<List<LaLigaResults>> fetchLaLigaResults(String matchDay) async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.laligaResults));
    // the result was nested in matchday 38
    List<Map<String, dynamic>> map = [];
    map = List<Map<String, dynamic>>.from(response);
    debugPrint("--------------------------Response - ${map[0][" Matchday $matchDay "]}");
    final lists = <LaLigaResults>[];
    for(var item in map[0][" Matchday $matchDay "]){
      final list = LaLigaResults.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<SerieAResults>> fetchSerieAResults(String matchDay) async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.serieaResults));
    // the result was nested in matchday 38
    List<Map<String, dynamic>> map = [];
    map = List<Map<String, dynamic>>.from(response);
    debugPrint("--------------------------Response - ${map[0][" Matchday $matchDay "]}");
    final lists = <SerieAResults>[];
    for(var item in map[0][" Matchday $matchDay "]){
      final list = SerieAResults.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<BundesligaResults>> fetchBundesligaResults(String matchDay) async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.bundesligaResults));
    // the result was nested in matchday 38
    List<Map<String, dynamic>> map = [];
    map = List<Map<String, dynamic>>.from(response);
    debugPrint("--------------------------Response - ${map[0][" Matchday $matchDay "]}");
    final lists = <BundesligaResults>[];
    for(var item in map[0][" Matchday $matchDay "]){
      final list = BundesligaResults.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<Ligue1Results>> fetchLigue1Results(String matchDay) async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.ligue1Results));
    // the result was nested in matchday 38
    List<Map<String, dynamic>> map = [];
    map = List<Map<String, dynamic>>.from(response);
    debugPrint("--------------------------Response - ${map[0][" Matchday $matchDay "]}");
    final lists = <Ligue1Results>[];
    for(var item in map[0][" Matchday $matchDay "]){
      final list = Ligue1Results.fromJson(item);
      lists.add(list);
    }
    return lists;
  }
}