import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:my_footbal_stats/network_modules/api_base.dart';
import 'package:my_footbal_stats/network_modules/api_exceptions.dart';
import 'package:http/http.dart' as http;


class HttpClient {
  static final HttpClient _singleton = HttpClient();

  static HttpClient get instance => _singleton;

  Future<List<Map<String,dynamic>>> fetchData(String url, {Map<String, String>? params}) async {
    List<Map<String,dynamic>> responseJson;

    var uri = APIBase.baseUrl + url + ((params != null) ? this.queryParameters(params) : "");
    const Map<String, String> header = {
      "X-RapidAPI-Key": "----------------",
      "X-RapidAPI-Host": "football98.p.rapidapi.com",
    };
    try {
      final response = await http.get(Uri.parse(uri), headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  String queryParameters(Map<String, String> params) {
    if (params != null) {
      final jsonString = Uri(queryParameters: params);
      return '?${jsonString.query}';
    }
    return '';
  }

  Future<dynamic> postData(String url, dynamic body) async {
    var responseJson;
    var header = {HttpHeaders.contentTypeHeader: 'application/json'};
    try {
      final response =
      await http.post(Uri.parse(APIBase.baseUrl + url), body: body, headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  List<Map<String,dynamic>> _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        // The json api is a list of maps so do it this way
        List<Map<String, dynamic>> map = [];
        map = List<Map<String, dynamic>>.from(jsonDecode(response.body));

        ////////////////////////////////////////////////////////////////////////
        // if the json is a normal map instead, use this

        // var responseJson = json.decode(response.body.toString());
        // return responseJson;
        ////////////////////////////////////////////////////////////////////////

        return map;
      case 400:
        throw BadRequestException(response.body);
      case 401:
      case 403:
        throw UnauthorisedException(response.body);
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
