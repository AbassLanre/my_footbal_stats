// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PremierLeagueTable _$PremierLeagueTableFromJson(Map<String, dynamic> json) =>
    PremierLeagueTable(
      position: json['Position'] as String?,
      squadLogo: json['SquadLogo'] as String?,
      name: json['Name'] as String?,
      points: json['Points'] as String?,
      played: json['Played'] as String?,
      won: json['Winned'] as String?,
      lost: json['Loosed'] as String?,
      draw: json['Tie'] as String?,
      goalDifference: json['Goal Difference'] as String?,
    );

Map<String, dynamic> _$PremierLeagueTableToJson(PremierLeagueTable instance) =>
    <String, dynamic>{
      'Position': instance.position,
      'SquadLogo': instance.squadLogo,
      'Name': instance.name,
      'Points': instance.points,
      'Played': instance.played,
      'Winned': instance.won,
      'Loosed': instance.lost,
      'Tie': instance.draw,
      'Goal Difference': instance.goalDifference,
    };
