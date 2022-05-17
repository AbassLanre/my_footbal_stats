
import 'package:flutter/cupertino.dart';
import 'package:my_footbal_stats/models/fixtures_model.dart';
import 'package:my_footbal_stats/network_modules/api_path.dart';
import 'package:my_footbal_stats/network_modules/http_client.dart';


class FixtureRepository {

  Future<List<PremierLeagueFixtures>> fetchPremierLeagueFixtures(String matchDay) async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.premierLeagueFixtures));
    // the fixture was nested in matchday 38
    List<Map<String, dynamic>> map = [];
    map = List<Map<String, dynamic>>.from(response);
    debugPrint("--------------------------Response - ${map[0][" Matchday 38 "]}");
    final lists = <PremierLeagueFixtures>[];
    for(var item in map[0][" Matchday $matchDay "]){
      final list = PremierLeagueFixtures.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<LaLigaFixtures>> fetchLaLigaFixtures(String matchDay) async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.laligaFixtures));
    // the fixture was nested in matchday 38
    List<Map<String, dynamic>> map = [];
    map = List<Map<String, dynamic>>.from(response);
    debugPrint("--------------------------Response - ${map[0][" Matchday 38 "]}");
    final lists = <LaLigaFixtures>[];
    for(var item in map[0][" Matchday $matchDay "]){
      final list = LaLigaFixtures.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<SerieAFixtures>> fetchSerieAFixtures(String matchDay) async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.serieaFixtures));
    // the fixture was nested in matchday 38
    List<Map<String, dynamic>> map = [];
    map = List<Map<String, dynamic>>.from(response);
    debugPrint("--------------------------Response - ${map[0][" Matchday 38 "]}");
    final lists = <SerieAFixtures>[];
    for(var item in map[0][" Matchday $matchDay "]){
      final list = SerieAFixtures.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<BundesligaFixtures>> fetchBundesligaFixtures(String matchDay) async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.bundesligaFixtures));
    // the fixture was nested in matchday 38
    List<Map<String, dynamic>> map = [];
    map = List<Map<String, dynamic>>.from(response);
    debugPrint("--------------------------Response - ${map[0][" Matchday 38 "]}");
    final lists = <BundesligaFixtures>[];
    for(var item in map[0][" Matchday $matchDay "]){
      final list = BundesligaFixtures.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<Ligue1Fixtures>> fetchLigue1Fixtures(String matchDay) async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.ligue1Fixtures));
    // the fixture was nested in matchday 38
    List<Map<String, dynamic>> map = [];
    map = List<Map<String, dynamic>>.from(response);
    debugPrint("--------------------------Response - ${map[0][" Matchday 38 "]}");
    final lists = <Ligue1Fixtures>[];
    for(var item in map[0][" Matchday $matchDay "]){
      final list = Ligue1Fixtures.fromJson(item);
      lists.add(list);
    }
    return lists;
  }
}