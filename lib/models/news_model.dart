
import 'package:json_annotation/json_annotation.dart';
part 'news_model.g.dart';

@JsonSerializable()
class PremierLeagueNews {
  String? NewsLink;
  String? Image;
  String? Title;
  String? PublisherLogo;
  String? PublisherName;
  String? PublisherDate;

  PremierLeagueNews(
      {this.NewsLink,
      this.Image,
      this.Title,
      this.PublisherLogo,
      this.PublisherName,
      this.PublisherDate});

  factory PremierLeagueNews.fromJson(Map<String, dynamic> json)=> _$PremierLeagueNewsFromJson(json);
  Map<String, dynamic> toJson()=> _$PremierLeagueNewsToJson(this);
}

@JsonSerializable()
class LaLigaNews {
  String? NewsLink;
  String? Image;
  String? Title;
  String? PublisherLogo;
  String? PublisherName;
  String? PublisherDate;

  LaLigaNews(
      {this.NewsLink,
        this.Image,
        this.Title,
        this.PublisherLogo,
        this.PublisherName,
        this.PublisherDate});

  factory LaLigaNews.fromJson(Map<String, dynamic> json)=> _$LaLigaNewsFromJson(json);
  Map<String, dynamic> toJson()=> _$LaLigaNewsToJson(this);
}

@JsonSerializable()
class SerieANews {
  String? NewsLink;
  String? Image;
  String? Title;
  String? PublisherLogo;
  String? PublisherName;
  String? PublisherDate;

  SerieANews(
      {this.NewsLink,
        this.Image,
        this.Title,
        this.PublisherLogo,
        this.PublisherName,
        this.PublisherDate});

  factory SerieANews.fromJson(Map<String, dynamic> json)=> _$SerieANewsFromJson(json);
  Map<String, dynamic> toJson()=> _$SerieANewsToJson(this);
}

@JsonSerializable()
class BundesligaNews {
  String? NewsLink;
  String? Image;
  String? Title;
  String? PublisherLogo;
  String? PublisherName;
  String? PublisherDate;

  BundesligaNews(
      {this.NewsLink,
        this.Image,
        this.Title,
        this.PublisherLogo,
        this.PublisherName,
        this.PublisherDate});

  factory BundesligaNews.fromJson(Map<String, dynamic> json)=> _$BundesligaNewsFromJson(json);
  Map<String, dynamic> toJson()=> _$BundesligaNewsToJson(this);
}

@JsonSerializable()
class Ligue1News {
  String? NewsLink;
  String? Image;
  String? Title;
  String? PublisherLogo;
  String? PublisherName;
  String? PublisherDate;

  Ligue1News(
      {this.NewsLink,
        this.Image,
        this.Title,
        this.PublisherLogo,
        this.PublisherName,
        this.PublisherDate});

  factory Ligue1News.fromJson(Map<String, dynamic> json)=> _$Ligue1NewsFromJson(json);
  Map<String, dynamic> toJson()=> _$Ligue1NewsToJson(this);
}
