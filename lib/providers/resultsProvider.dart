

import 'package:flutter/material.dart';
import 'package:my_footbal_stats/models/results_model.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/repositories/resultRepo.dart';

class ResultsProvider with ChangeNotifier{

  ResultRepository? _resultRepository = ResultRepository();

  ApiResponse<List<PremierLeagueResults>>? _premierLeagueResult;
  ApiResponse<List<PremierLeagueResults>>? get premierLeagueResult => _premierLeagueResult;

  ApiResponse<List<SerieAResults>>? _serieAResult;
  ApiResponse<List<SerieAResults>>? get serieAResult => _serieAResult;

  ApiResponse<List<LaLigaResults>>? _laLigaResult;
  ApiResponse<List<LaLigaResults>>? get laLigaResult => _laLigaResult;

  ApiResponse<List<BundesligaResults>>? _bundesligaResult;
  ApiResponse<List<BundesligaResults>>? get bundesligaResult => _bundesligaResult;

  ApiResponse<List<Ligue1Results>>? _ligue1Result;
  ApiResponse<List<Ligue1Results>>? get ligue1Result => _ligue1Result;

  /// Dont do this againnnnnnnnn
  // ResultsProvider(){
  //   _resultRepository = ResultRepository();
  //   fetchPremierLeagueResults(matchDay);
  //   // fetchLaLigaResults();
  //   // fetchBundesligaResults();
  //   // fetchSerieAResults();
  //   // fetchLigue1Results();
  //
  // }


  void fetchPremierLeagueResults(String? matchDay) async{
    _premierLeagueResult = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<PremierLeagueResults>? premierLeagueResult = await _resultRepository?.fetchPremierLeagueResults(matchDay);
      _premierLeagueResult = ApiResponse.completed(premierLeagueResult);
      notifyListeners();
    } catch (e) {
      _premierLeagueResult = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  void fetchLaLigaResults() async{
    _laLigaResult = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<LaLigaResults>? laLigaResults = await _resultRepository?.fetchLaLigaResults("38");
      _laLigaResult = ApiResponse.completed(laLigaResults);
      notifyListeners();
    } catch (e) {
      _laLigaResult = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  void fetchBundesligaResults() async{
    _bundesligaResult = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<BundesligaResults>? bundesligaResult = await _resultRepository?.fetchBundesligaResults("38");
      _bundesligaResult = ApiResponse.completed(bundesligaResult);
      notifyListeners();
    } catch (e) {
      _bundesligaResult = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  void fetchSerieAResults() async{
    _serieAResult = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<SerieAResults>? serieAResults = await _resultRepository?.fetchSerieAResults("38");
      _serieAResult = ApiResponse.completed(serieAResults);
      notifyListeners();
    } catch (e) {
      _serieAResult = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  void fetchLigue1Results() async{
    _ligue1Result = ApiResponse.loading('loading... ');
    notifyListeners();
  try {

    List<Ligue1Results>? ligue1Result = await _resultRepository?.fetchLigue1Results("38");
    _ligue1Result = ApiResponse.completed(ligue1Result);
    notifyListeners();
  } catch (e) {
    _ligue1Result = ApiResponse.error(e.toString());
    notifyListeners();
  }}

}