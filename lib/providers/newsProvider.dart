

import 'package:flutter/material.dart';
import 'package:my_footbal_stats/models/news_model.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/repositories/newsRepo.dart';

class NewsProvider with ChangeNotifier{
  NewsRepository? _newsRepository;

  ApiResponse<List<PremierLeagueNews>>? _premierLeagueNews;
  ApiResponse<List<PremierLeagueNews>>? get premierLeagueNews => _premierLeagueNews;

  ApiResponse<List<LaLigaNews>>? _laLigaNews;
  ApiResponse<List<LaLigaNews>>? get laLigaNews => _laLigaNews;

  ApiResponse<List<SerieANews>>? _serieANews;
  ApiResponse<List<SerieANews>>? get serieANews => _serieANews;

  ApiResponse<List<BundesligaNews>>? _bundesligaNews;
  ApiResponse<List<BundesligaNews>>? get bundesligaNews => _bundesligaNews;

  ApiResponse<List<Ligue1News>>? _ligue1News;
  ApiResponse<List<Ligue1News>>? get ligue1News => _ligue1News;

  NewsProvider(){
    _newsRepository = NewsRepository();
    fetchPremierLeagueNews();
    fetchLaLigaNews();
    fetchSerieANews();
    fetchBundesligaNews();
    fetchLigue1News();

  }

  fetchPremierLeagueNews() async{
    _premierLeagueNews = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<PremierLeagueNews>? premierLeagueNews = await _newsRepository?.fetchPremierLeagueNews();
      _premierLeagueNews = ApiResponse.completed(premierLeagueNews);
      notifyListeners();
    } catch (e) {
      _premierLeagueNews = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  void fetchLaLigaNews() async{
    _laLigaNews = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<LaLigaNews>? laLigaNews = await _newsRepository?.fetchLaLigaNews();
      _laLigaNews = ApiResponse.completed(laLigaNews);
      notifyListeners();
    } catch (e) {
      _laLigaNews = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  void fetchSerieANews() async{
    _serieANews = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<SerieANews>? serieANews = await _newsRepository?.fetchSerieANews();
      _serieANews = ApiResponse.completed(serieANews);
      notifyListeners();
    } catch (e) {
      _serieANews = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  void fetchBundesligaNews() async{
    _bundesligaNews = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<BundesligaNews>? bundesligaNews = await _newsRepository?.fetchBundesligaNews();
      _bundesligaNews = ApiResponse.completed(bundesligaNews);
      notifyListeners();
    } catch (e) {
      _bundesligaNews = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  void fetchLigue1News() async{
    _ligue1News = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<Ligue1News>? ligue1News = await _newsRepository?.fetchLigue1News();
      _ligue1News = ApiResponse.completed(ligue1News);
      notifyListeners();
    } catch (e) {
      _ligue1News = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

}