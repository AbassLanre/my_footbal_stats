
import 'package:flutter/material.dart';
import 'package:my_footbal_stats/models/table_model.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/repositories/leagueRepo.dart';

class LeagueTableProvider with ChangeNotifier{

  TableRepository? _tableRepository;

  ApiResponse<List<PremierLeagueTable>>? _premierLeagueTable;
  ApiResponse<List<PremierLeagueTable>>? get premierLeagueTable=> _premierLeagueTable;

  ApiResponse<List<LaLigaTable>>? _laLigaTable;
  ApiResponse<List<LaLigaTable>>? get laLigaTable=> _laLigaTable;

  ApiResponse<List<SerieATable>>? _serieATable;
  ApiResponse<List<SerieATable>>? get serieATable=> _serieATable;

  ApiResponse<List<BundesligaTable>>? _bundesligaTable;
  ApiResponse<List<BundesligaTable>>? get bundesligaTable=> _bundesligaTable;

  ApiResponse<List<Ligue1Table>>? _ligue1Table;
  ApiResponse<List<Ligue1Table>>? get ligue1Table=> _ligue1Table;

  //remember that fetching from the api should be called from the providerConstructor
  //with no set only get
  LeagueTableProvider() {
    _tableRepository = TableRepository();
    // fetchPremierLeagueTable();
    // fetchLaLigaTable();
    // fetchSerieATable();
    // fetchBundesligaTable();
    // fetchLigue1Table();

  }
  //but normal providers should have their set and get as normal

  fetchPremierLeagueTable() async {
    _premierLeagueTable = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<PremierLeagueTable>? premierLeagueTable = await _tableRepository?.fetchPremierLeagueTable();
      _premierLeagueTable = ApiResponse.completed(premierLeagueTable);
      notifyListeners();
    } catch (e) {
      _premierLeagueTable = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  fetchLaLigaTable() async {
    _laLigaTable = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<LaLigaTable>? laLigaTable = await _tableRepository?.fetchLaLigaTable();
      _laLigaTable = ApiResponse.completed(laLigaTable);
      notifyListeners();
    } catch (e) {
      _laLigaTable = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  fetchSerieATable() async{
    _serieATable = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<SerieATable>? serieATable = await _tableRepository?.fetchSerieATable();
      _serieATable = ApiResponse.completed(serieATable);
      notifyListeners();
    } catch (e) {
      _serieATable = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  fetchBundesligaTable() async{
    _bundesligaTable = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<BundesligaTable>? bundesligaTable = await _tableRepository?.fetchBundesligaTable();
      _bundesligaTable = ApiResponse.completed(bundesligaTable);
      notifyListeners();
    } catch (e) {
      _bundesligaTable = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }

  fetchLigue1Table() async{
    _ligue1Table = ApiResponse.loading('loading... ');
    notifyListeners();
    try {

      List<Ligue1Table>? ligue1Table = await _tableRepository?.fetchLigue1Table();
      _ligue1Table = ApiResponse.completed(ligue1Table);
      notifyListeners();
    } catch (e) {
      _ligue1Table = ApiResponse.error(e.toString());
      notifyListeners();
    }
  }
}