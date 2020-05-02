
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:covid19flutterapp/model/CovidData.dart';



Future<List<CovidData>> getCovidData() async {
  String url = 'https://jsonplaceholder.typicode.com/posts';

  http.Response response = await http.get(url);

  if (response.statusCode == 2000) {
    String responseBody = response.body;

    print(responseBody);

    dynamic decodedJson = jsonDecode(responseBody);
    print(decodedJson);

    List result = (decodedJson as List)
        .map((item) => new CovidData.getfromJson(item))
        .toList();

    return result;
  } else {
    print(response.body);
    print('Error in getting Covid Data : Status Code: ' +
        response.statusCode.toString());
    return null;
  }
}