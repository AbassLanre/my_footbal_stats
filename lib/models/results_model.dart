
import 'package:json_annotation/json_annotation.dart';
part 'results_model.g.dart';

@JsonSerializable()
class PremierLeagueResults{

  String? homeLogo;
  String? homeTeam;
  String? awayLogo;
  String? awayTeam;
  String? homeTeamScore;
  String? awayTeamScore;
  String? MatchDay;

  PremierLeagueResults({this.homeLogo, this.homeTeam, this.awayLogo,
      this.awayTeam, this.homeTeamScore, this.awayTeamScore, this.MatchDay});
  factory PremierLeagueResults.fromJson(Map<String, dynamic> json) => _$PremierLeagueResultsFromJson(json);
  Map<String,dynamic> toJson()=>{};

}

@JsonSerializable()
class LaLigaResults{

  String? homeLogo;
  String? homeTeam;
  String? awayLogo;
  String? awayTeam;
  String? homeTeamScore;
  String? awayTeamScore;
  String? MatchDay;

  LaLigaResults({this.homeLogo, this.homeTeam, this.awayLogo,
    this.awayTeam, this.homeTeamScore, this.awayTeamScore, this.MatchDay});
  factory LaLigaResults.fromJson(Map<String, dynamic> json) => _$LaLigaResultsFromJson(json);
  Map<String,dynamic> toJson()=>{};

}

@JsonSerializable()
class SerieAResults{

  String? homeLogo;
  String? homeTeam;
  String? awayLogo;
  String? awayTeam;
  String? homeTeamScore;
  String? awayTeamScore;
  String? MatchDay;

  SerieAResults({this.homeLogo, this.homeTeam, this.awayLogo,
    this.awayTeam, this.homeTeamScore, this.awayTeamScore, this.MatchDay});
  factory SerieAResults.fromJson(Map<String, dynamic> json) => _$SerieAResultsFromJson(json);
  Map<String,dynamic> toJson()=>{};

}

@JsonSerializable()
class BundesligaResults{

  String? homeLogo;
  String? homeTeam;
  String? awayLogo;
  String? awayTeam;
  String? homeTeamScore;
  String? awayTeamScore;
  String? MatchDay;

  BundesligaResults({this.homeLogo, this.homeTeam, this.awayLogo,
    this.awayTeam, this.homeTeamScore, this.awayTeamScore, this.MatchDay});
  factory BundesligaResults.fromJson(Map<String, dynamic> json) => _$BundesligaResultsFromJson(json);
  Map<String,dynamic> toJson()=>{};

}

@JsonSerializable()
class Ligue1Results{

  String? homeLogo;
  String? homeTeam;
  String? awayLogo;
  String? awayTeam;
  String? homeTeamScore;
  String? awayTeamScore;
  String? MatchDay;

  Ligue1Results({this.homeLogo, this.homeTeam, this.awayLogo,
    this.awayTeam, this.homeTeamScore, this.awayTeamScore, this.MatchDay});
  factory Ligue1Results.fromJson(Map<String, dynamic> json) => _$Ligue1ResultsFromJson(json);
  Map<String,dynamic> toJson()=>{};

}