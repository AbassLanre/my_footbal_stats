

import 'package:flutter/material.dart';
import 'package:my_footbal_stats/models/fixtures_model.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/repositories/fixtureRepo.dart';

class FixturesProvider with ChangeNotifier{

  FixtureRepository? _fixtureRepository = FixtureRepository();

  ApiResponse<List<PremierLeagueFixtures>>? _premierLeagueFixtures;
  ApiResponse<List<PremierLeagueFixtures>>? get premierLeagueFixtures => _premierLeagueFixtures;

  ApiResponse<List<SerieAFixtures>>? _serieAFixtures;
  ApiResponse<List<SerieAFixtures>>? get serieAFixtures => _serieAFixtures;

  ApiResponse<List<LaLigaFixtures>>? _laLigaFixtures;
  ApiResponse<List<LaLigaFixtures>>? get laLigaFixtures => _laLigaFixtures;

  ApiResponse<List<BundesligaFixtures>>? _bundesligaFixtures;
  ApiResponse<List<BundesligaFixtures>>? get bundesligaFixtures => _bundesligaFixtures;

  ApiResponse<List<Ligue1Fixtures>>? _ligue1Fixtures;
  ApiResponse<List<Ligue1Fixtures>>? get ligue1Fixtures => _ligue1Fixtures;

  // FixturesProvider(){
  //   _fixtureRepository = FixtureRepository();
  //   fetchPremierLeagueFixtures(matchDay);
  //   fetchLaLigaFixtures();
  //   fetchBundesligaFixtures();
  //   fetchSerieAFixtures();
  //   fetchLigue1Fixtures();
  // }

  void fetchPremierLeagueFixtures(String? matchDay) async{
    _premierLeagueFixtures = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<PremierLeagueFixtures>? premierLeagueFixtures = await _fixtureRepository?.fetchPremierLeagueFixtures(matchDay);
      _premierLeagueFixtures = ApiResponse.completed(premierLeagueFixtures);
      notifyListeners();
    } catch (e) {
      _premierLeagueFixtures = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }


  void fetchLaLigaFixtures() async{
    _laLigaFixtures = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<LaLigaFixtures>? laLigaFixtures = await _fixtureRepository?.fetchLaLigaFixtures("38");
      _laLigaFixtures = ApiResponse.completed(laLigaFixtures);
      notifyListeners();
    } catch (e) {
      _laLigaFixtures = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  void fetchBundesligaFixtures() async{
    _bundesligaFixtures = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<BundesligaFixtures>? bundesligaFixtures = await _fixtureRepository?.fetchBundesligaFixtures("38");
      _bundesligaFixtures = ApiResponse.completed(bundesligaFixtures);
      notifyListeners();
    } catch (e) {
      _bundesligaFixtures = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  void fetchSerieAFixtures() async{
    _serieAFixtures = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<SerieAFixtures>? serieAFixtures = await _fixtureRepository?.fetchSerieAFixtures("38");
      _serieAFixtures = ApiResponse.completed(serieAFixtures);
      notifyListeners();
    } catch (e) {
      _serieAFixtures = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  void fetchLigue1Fixtures() async{
    _ligue1Fixtures = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<Ligue1Fixtures>? ligue1Fixtures = await _fixtureRepository?.fetchLigue1Fixtures("38");
      _ligue1Fixtures = ApiResponse.completed(ligue1Fixtures);
      notifyListeners();
    } catch (e) {
      _ligue1Fixtures = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

}