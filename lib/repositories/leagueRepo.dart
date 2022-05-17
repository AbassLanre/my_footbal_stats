import 'package:flutter/cupertino.dart';
import 'package:my_footbal_stats/network_modules/api_path.dart';
import 'package:my_footbal_stats/network_modules/http_client.dart';

import 'package:my_footbal_stats/models/table_model.dart';

class TableRepository{
  // the premier league table api is a list of maps, so we have to iterate through
  // and assign item to each list of premierleaguetable class
  Future<List<PremierLeagueTable>> fetchPremierLeagueTable() async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.premierLeagueTable));
    debugPrint("--------------------------Response - ${response}");
    final lists = <PremierLeagueTable>[];
    for(var item in response){
      final list = PremierLeagueTable.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<LaLigaTable>> fetchLaLigaTable() async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.laligatable));
    debugPrint("--------------------------Response - ${response}");
    final lists = <LaLigaTable>[];
    for(var item in response){
      final list = LaLigaTable.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<SerieATable>> fetchSerieATable() async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.serieatable));
    debugPrint("--------------------------Response - ${response}");
    final lists = <SerieATable>[];
    for(var item in response){
      final list = SerieATable.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<BundesligaTable>> fetchBundesligaTable() async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.bundesligatable));
    debugPrint("--------------------------Response - ${response}");
    final lists = <BundesligaTable>[];
    for(var item in response){
      final list = BundesligaTable.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<Ligue1Table>> fetchLigue1Table() async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.ligue1table));
    debugPrint("--------------------------Response - ${response}");
    final lists = <Ligue1Table>[];
    for(var item in response){
      final list = Ligue1Table.fromJson(item);
      lists.add(list);
    }
    debugPrint(lists[0].name);
    return lists;
  }
}