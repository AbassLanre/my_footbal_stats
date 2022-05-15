enum APIPath{
  premierLeagueTable,
}

class APIPathHelper{
  static String getPath(APIPath path){
    switch (path){
      case APIPath.premierLeagueTable:
        return "/premierleague/table";
      default:
        return "";
    }
  }
}