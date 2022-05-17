enum APIPath{
  premierLeagueTable,
  laligatable,
  serieatable,
  bundesligatable,
  ligue1table,
  premierLeagueNews,
  laligaNews,
  serieaNews,
  bundesligaNews,
  ligue1News,
  premierLeagueFixtures,
  laligaFixtures,
  serieaFixtures,
  bundesligaFixtures,
  ligue1Fixtures,
  premierLeagueResults,
  laligaResults,
  serieaResults,
  bundesligaResults,
  ligue1Results,
}

class APIPathHelper{
  static String getPath(APIPath path){
    switch (path){
      case APIPath.premierLeagueTable:
        return "/premierleague/table";
      case APIPath.laligatable:
        return "/liga/table";
      case APIPath.serieatable:
        return "/seriea/table";
      case APIPath.bundesligatable:
        return "/bundesliga/table";
      case APIPath.ligue1table:
        return "/ligue1/table";
      case APIPath.premierLeagueNews:
        return "/premierleague/news";
      case APIPath.laligaNews:
        return "/liga/news";
      case APIPath.serieaNews:
        return "/seriea/news";
      case APIPath.bundesligaNews:
        return "/bundesliga/news";
      case APIPath.ligue1News:
        return "/ligue1/news";
      case APIPath.premierLeagueFixtures:
        return "/premierleague/fixtures";
      case APIPath.laligaFixtures:
        return "/liga/fixtures";
      case APIPath.serieaFixtures:
        return "/seriea/fixtures";
      case APIPath.ligue1Fixtures:
        return "/ligue1/fixtures";
      case APIPath.bundesligaFixtures:
        return "/bundesliga/fixtures";
      case APIPath.premierLeagueResults:
        return "/premierleague/results";
      case APIPath.laligaResults:
        return "/liga/results";
      case APIPath.serieaResults:
        return "/seriea/results";
      case APIPath.bundesligaResults:
        return "/bundesliga/results";
      case APIPath.ligue1Results:
        return "/ligue1/results";
      default:
        return "";
    }
  }
}