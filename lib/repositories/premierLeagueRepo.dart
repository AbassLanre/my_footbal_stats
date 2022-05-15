import 'package:my_footbal_stats/network_modules/api_path.dart';
import 'package:my_footbal_stats/network_modules/http_client.dart';

import 'package:my_footbal_stats/models/table_model.dart';

class PremierLeagueTableRepository{
  // the premier league table api is a list of maps, so we have to iterate through
  // and assign item to each list of premierleaguetable class
  Future<List<PremierLeagueTable>> fetchPremierLeagueTable() async{
    final response = await HttpClient.instance
        .fetchData(APIPathHelper.getPath(APIPath.premierLeagueTable));
    print("--------------------------Response - ${response}");
    final lists = <PremierLeagueTable>[];
    for(var item in response){
      final list = PremierLeagueTable.fromJson(item);
      lists.add(list);
    }
    print(lists[0].name);
    return lists;
  }
}