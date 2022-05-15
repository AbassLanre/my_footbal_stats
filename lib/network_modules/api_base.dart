import 'package:flutter/foundation.dart';

class APIBase{
  static String get baseUrl{
    if(kReleaseMode){
      return "";
    }else{
      return "https://football98.p.rapidapi.com";
    }
  }
}