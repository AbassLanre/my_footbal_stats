
import 'package:json_annotation/json_annotation.dart';
part 'fixtures_model.g.dart';

@JsonSerializable()
class PremierLeagueFixtures{
  String? homeLogo;
  String? homeTeam;
  String? awayLogo;
  String? awayTeam;
  String? MatchDay;


  PremierLeagueFixtures({this.homeLogo, this.homeTeam, this.awayLogo,
      this.awayTeam, this.MatchDay});

  factory PremierLeagueFixtures.fromJson(Map<String, dynamic> json) => _$PremierLeagueFixturesFromJson(json);
  Map<String, dynamic> toJson() => _$PremierLeagueFixturesToJson(this);
}

@JsonSerializable()
class SerieAFixtures{
  String? homeLogo;
  String? homeTeam;
  String? awayLogo;
  String? awayTeam;
  String? MatchDay;


  SerieAFixtures({this.homeLogo, this.homeTeam, this.awayLogo,
      this.awayTeam, this.MatchDay});

  factory SerieAFixtures.fromJson(Map<String, dynamic> json) => _$SerieAFixturesFromJson(json);
  Map<String, dynamic> toJson() => _$SerieAFixturesToJson(this);
}

@JsonSerializable()
class LaLigaFixtures{
  String? homeLogo;
  String? homeTeam;
  String? awayLogo;
  String? awayTeam;
  String? MatchDay;


  LaLigaFixtures({this.homeLogo, this.homeTeam, this.awayLogo,
      this.awayTeam, this.MatchDay});

  factory LaLigaFixtures.fromJson(Map<String, dynamic> json) => _$LaLigaFixturesFromJson(json);
  Map<String, dynamic> toJson() => _$LaLigaFixturesToJson(this);
}

@JsonSerializable()
class BundesligaFixtures{
  String? homeLogo;
  String? homeTeam;
  String? awayLogo;
  String? awayTeam;
  String? MatchDay;


  BundesligaFixtures({this.homeLogo, this.homeTeam, this.awayLogo,
      this.awayTeam, this.MatchDay});

  factory BundesligaFixtures.fromJson(Map<String, dynamic> json) => _$BundesligaFixturesFromJson(json);
  Map<String, dynamic> toJson() => _$BundesligaFixturesToJson(this);
}

@JsonSerializable()
class Ligue1Fixtures{
  String? homeLogo;
  String? homeTeam;
  String? awayLogo;
  String? awayTeam;
  String? MatchDay;


  Ligue1Fixtures({this.homeLogo, this.homeTeam, this.awayLogo,
      this.awayTeam, this.MatchDay});

  factory Ligue1Fixtures.fromJson(Map<String, dynamic> json) => _$Ligue1FixturesFromJson(json);
  Map<String, dynamic> toJson() => _$Ligue1FixturesToJson(this);
}