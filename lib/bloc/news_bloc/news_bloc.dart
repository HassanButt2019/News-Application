import 'package:bloc/bloc.dart';
import 'package:news_application/bloc/news_bloc/events/get_news.dart';
import 'package:news_application/bloc/news_bloc/events/news_event.dart';
import 'package:news_application/bloc/news_bloc/events/search_news.dart';
import 'package:news_application/bloc/news_bloc/states/news_initial.dart';
import 'package:news_application/data/models/news.dart';
import 'package:news_application/data/repository/news_repository.dart';
import 'states/news_failure.dart';
import 'states/news_loaded.dart';
import 'states/news_state.dart';
import 'states/searched_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsRepository reposiotry = NewsRepository();
  List<News>?  liveNews = [];

  List<News>?  searchedNews = [];

  bool isUpdate = false;


  NewsBloc(this.reposiotry) : super(InitialNews()){
    on<RequestNews>(_onRequestNews);
    on<SearchNews>(_onSearchNews);

  }


  void clearMovies()
  {
    searchedNews!.clear();
  }


  void _onRequestNews(
      RequestNews event,
      Emitter<NewsState> emit,
      ) async {
    try {
      liveNews = await reposiotry.getLiveNews();
      emit(LoadedNews(liveNews:liveNews , ));

    } catch (e) {
      emit( FailureNews(error: e.toString()));
  }
  }

  void _onSearchNews(
      SearchNews event,
      Emitter<NewsState> emit,
      ) async {
    try {
      searchedNews = await reposiotry.getSearchedMovies(query: event.query!);
      emit( SearchLoadedNews().copyWith(searchNewss: searchedNews));
    } catch (e) {
      emit( FailureNews(error: e.toString()));
    }
  }
}

//1)
//2)