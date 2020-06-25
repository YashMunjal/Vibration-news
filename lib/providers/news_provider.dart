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
    const url='https://newsapi.org/v2/top-headlines?q=covid-19&country=in&apiKey=9cbb77acb25d415ebb8514748e087b08';
    http.Response response = await http.get(
      url,
      headers: {"Accept": "application/json"}
      );
    
    var x=NewsProvider.fromJson(json.decode(response.body));
    return x;
  }
}