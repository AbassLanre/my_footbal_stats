
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:my_footbal_stats/network_modules/api_response.dart';
import 'package:my_footbal_stats/providers/newsProvider.dart';
import 'package:provider/provider.dart';

class LeagueNews extends StatefulWidget {
  const LeagueNews({Key? key}) : super(key: key);

  @override
  State<LeagueNews> createState() => _LeagueNewsState();
}

class _LeagueNewsState extends State<LeagueNews> {

  launchURL(String url)async {
    if (!await launchUrl(Uri.parse(url))) throw "Error o";
  }
  @override
  Widget build(BuildContext context) {
    return premierLeagueNews(context);
  }

Widget premierLeagueNews(BuildContext context) {
  return Consumer<NewsProvider>(builder: (context, myTable, child) {
    if (myTable.premierLeagueNews?.status == Status.COMPLETED) {
      return ListView.builder(
        shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: myTable.premierLeagueNews?.data!.length,
          itemBuilder: (_,index){
            return InkWell(
              onTap: ()=> launchURL("${myTable.premierLeagueNews?.data![index].NewsLink}"),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Card(
                  margin:const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("${myTable.premierLeagueNews?.data![index].Image}")
                          )
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: Column(
                          children: [
                            Text("${myTable.premierLeagueNews?.data![index].Title}"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
    }
    else if (myTable.premierLeagueNews?.status == Status.ERROR) {
      return Text("Error : ${myTable.premierLeagueNews?.message}");
    } else {
      return Text("it's ${myTable.premierLeagueNews?.message}");
    }
  });
}
}
