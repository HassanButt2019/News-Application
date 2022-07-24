
import 'package:news_application/data/models/news.dart';

import 'news_state.dart';

class SearchLoadedNews extends NewsState
{

  List<News>? searchNews;


  SearchLoadedNews copyWith({
    List<News>? searchNewss
  })=>SearchLoadedNews(searchNews: searchNewss ??searchNews);


  SearchLoadedNews({this.searchNews  });
  @override
  // TODO: implement props
  List<Object?> get props => [searchNews];

}