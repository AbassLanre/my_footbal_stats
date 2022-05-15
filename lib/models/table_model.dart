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
