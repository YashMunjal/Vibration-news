import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vibrateNewsUi/models/news_model.dart';

class NewsProvider{

  List<NewsModel> newsp;

  // DEFAULT CONSTRUCTOR
  NewsProvider({
    this.newsp,
  });

  // FUNCTION FOR API RESPONSE MAPPING
  factory NewsProvider.fromJson(List<dynamic> parsedJson) {
    List<NewsModel> newsp = new List<NewsModel>();
    newsp = parsedJson.map((i)=>NewsModel.fromJson(i)).toList();
    return new NewsProvider(
       newsp: newsp,
    );
  }

  Future getNews() async {
    const url='https://covid-19-news.p.rapidapi.com/v1/covid?topic=news&lang=en&country=in&q=covid';
    http.Response response = await http.get(
      url,
      headers: {
        "x-rapidapi-host": "covid-19-news.p.rapidapi.com",
        "x-rapidapi-key": "cf896b5fc3msh83f30858d5860b3p1dff08jsn670351237bec"
      }
    );
    print(response.body);
    var x=NewsProvider.fromJson(json.decode(response.body));
    print(response.body);
    return x;
  }
}