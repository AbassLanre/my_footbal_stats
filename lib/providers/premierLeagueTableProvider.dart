
import 'package:flutter/material.dart';
import 'package:my_footbal_stats/models/table_model.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/repositories/premierLeagueRepo.dart';

class PremierLeagueTableProvider with ChangeNotifier{

  PremierLeagueTableRepository? _premierLeagueTableRepository;

  ApiResponse<List<PremierLeagueTable>>? _premierLeagueTable;

  ApiResponse<List<PremierLeagueTable>>? get premierLeagueTable=> _premierLeagueTable;

  //remember that fetching from the api should be called from the providerConstructor
  //with no set only get
  PremierLeagueTableProvider() {
    _premierLeagueTableRepository = PremierLeagueTableRepository();
    fetchPremierLeagueTable();
  }
  //but normal providers should have their set and get as normal

  fetchPremierLeagueTable() async {
    _premierLeagueTable = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<PremierLeagueTable>? premierLeagueTable = await _premierLeagueTableRepository?.fetchPremierLeagueTable();
      _premierLeagueTable = ApiResponse.completed(premierLeagueTable);
      notifyListeners();
    } catch (e) {
      _premierLeagueTable = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }
}