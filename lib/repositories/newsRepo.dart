

import 'package:flutter/cupertino.dart';
import 'package:my_footbal_stats/models/news_model.dart';
import 'package:my_footbal_stats/network_modules/api_path.dart';
import 'package:my_footbal_stats/network_modules/http_client.dart';

class NewsRepository{
  Future<List<PremierLeagueNews>> fetchPremierLeagueNews() async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.premierLeagueNews));
    debugPrint("--------------------------Response - ${response}");
    final lists = <PremierLeagueNews>[];
    for(var item in response){
      final list = PremierLeagueNews.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<LaLigaNews>> fetchLaLigaNews() async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.laligaNews));
    debugPrint("--------------------------Response - ${response}");
    final lists = <LaLigaNews>[];
    for(var item in response){
      final list = LaLigaNews.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<SerieANews>> fetchSerieANews() async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.serieaNews));
    debugPrint("--------------------------Response - ${response}");
    final lists = <SerieANews>[];
    for(var item in response){
      final list = SerieANews.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<BundesligaNews>> fetchBundesligaNews() async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.bundesligaNews));
    debugPrint("--------------------------Response - ${response}");
    final lists = <BundesligaNews>[];
    for(var item in response){
      final list = BundesligaNews.fromJson(item);
      lists.add(list);
    }
    return lists;
  }

  Future<List<Ligue1News>> fetchLigue1News() async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.ligue1News));
    debugPrint("--------------------------Response - ${response}");
    final lists = <Ligue1News>[];
    for(var item in response){
      final list = Ligue1News.fromJson(item);
      lists.add(list);
    }
    return lists;
  }
}