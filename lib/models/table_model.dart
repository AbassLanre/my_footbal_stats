import 'package:json_annotation/json_annotation.dart';
part 'table_model.g.dart';
@JsonSerializable()
class PremierLeagueTable{
  final String? position;
  final String? squadLogo;
  final String? name;
  final String? points;
  final String? played;
  final String? won;
  final String? lost;
  final String? draw;
  final String? goalDifference;

  PremierLeagueTable({this.position, this.squadLogo, this.name, this.points,
      this.played, this.won, this.lost, this.draw, this.goalDifference});

  factory PremierLeagueTable.fromJson(Map<String, dynamic> json)=> _$PremierLeagueTableFromJson(json);

  Map<String, dynamic> toJson() => _$PremierLeagueTableToJson(this);
}

@JsonSerializable()
class LaLigaTable{
  final String? position;
  final String? squadLogo;
  final String? name;
  final String? points;
  final String? played;
  final String? won;
  final String? lost;
  final String? draw;
  final String? goalDifference;

  LaLigaTable({this.position, this.squadLogo, this.name, this.points,
    this.played, this.won, this.lost, this.draw, this.goalDifference});

  factory LaLigaTable.fromJson(Map<String, dynamic> json)=> _$LaLigaTableFromJson(json);

  Map<String, dynamic> toJson() => _$LaLigaTableToJson(this);
}

@JsonSerializable()
class SerieATable{
  final String? position;
  final String? squadLogo;
  final String? name;
  final String? points;
  final String? played;
  final String? won;
  final String? lost;
  final String? draw;
  final String? goalDifference;

  SerieATable({this.position, this.squadLogo, this.name, this.points,
    this.played, this.won, this.lost, this.draw, this.goalDifference});

  factory SerieATable.fromJson(Map<String, dynamic> json)=> _$SerieATableFromJson(json);

  Map<String, dynamic> toJson() => _$SerieATableToJson(this);
}

@JsonSerializable()
class BundesligaTable{
  final String? position;
  final String? squadLogo;
  final String? name;
  final String? points;
  final String? played;
  final String? won;
  final String? lost;
  final String? draw;
  final String? goalDifference;

  BundesligaTable({this.position, this.squadLogo, this.name, this.points,
    this.played, this.won, this.lost, this.draw, this.goalDifference});

  factory BundesligaTable.fromJson(Map<String, dynamic> json)=> _$BundesligaTableFromJson(json);

  Map<String, dynamic> toJson() => _$BundesligaTableToJson(this);
}

@JsonSerializable()
class Ligue1Table{
  final String? position;
  final String? squadLogo;
  final String? name;
  final String? points;
  final String? played;
  final String? won;
  final String? lost;
  final String? draw;
  final String? goalDifference;

  Ligue1Table({this.position, this.squadLogo, this.name, this.points,
    this.played, this.won, this.lost, this.draw, this.goalDifference});

  factory Ligue1Table.fromJson(Map<String, dynamic> json)=> _$Ligue1TableFromJson(json);

  Map<String, dynamic> toJson() => _$Ligue1TableToJson(this);
}
