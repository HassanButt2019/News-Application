import 'package:http/http.dart' as http;


import 'dart:convert';

import 'package:news_application/data/data_provider/news_data_provider.dart';
import 'package:news_application/data/models/news.dart';


class NewsRepository
{
  final NewsDataProvider _provider = NewsDataProvider();
  Future<List<News>>  getSearchedMovies({String query='Unknown' }) async
  {
    http.Response rawData = await _provider.searchNews(query:query);
    final json = jsonDecode(rawData.body) ;
    List<News> data = [];
    if(json != null) {
      data = json["data"].map<News>((model) => News.fromJson(model)).toList();
    }

    return data;
  }

  Future<List<News>>  getLiveNews() async
  {
    http.Response rawData = await _provider.getLatestNews();
    final json = jsonDecode(rawData.body) ;
    List<News> data = json["data"].map<News>((model) => News.fromJson(model)).toList();
    print(data.length);
    for(News dat in data)
      {
        print(dat.author);
      }
    return data;
  }

}