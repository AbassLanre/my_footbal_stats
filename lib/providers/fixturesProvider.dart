

import 'package:flutter/material.dart';
import 'package:my_footbal_stats/models/fixtures_model.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/repositories/fixtureRepo.dart';

class FixturesProvider with ChangeNotifier{
  FixtureRepository? _fixtureRepository;

  ApiResponse<List<PremierLeagueFixtures>>? _premierLeagueFixtures;
  ApiResponse<List<PremierLeagueFixtures>>? get premierLeagueFixtures => _premierLeagueFixtures;

  FixturesProvider(){
    _fixtureRepository = FixtureRepository();
    fetchPremierLeaueFixtures();
  }

  void fetchPremierLeaueFixtures() async{
    _premierLeagueFixtures = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<PremierLeagueFixtures>? premierLeagueFixtures = await _fixtureRepository?.fetchPremierLeagueFixtures("38");
      _premierLeagueFixtures = ApiResponse.completed(premierLeagueFixtures);
      notifyListeners();
    } catch (e) {
      _premierLeagueFixtures = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }


}