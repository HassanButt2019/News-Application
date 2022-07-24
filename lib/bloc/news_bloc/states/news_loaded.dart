
import 'package:news_application/bloc/news_bloc/states/news_state.dart';
import 'package:news_application/data/models/news.dart';

class LoadedNews extends NewsState
{

  List<News>? liveNews;

  LoadedNews({required this.liveNews });
  @override
  List<Object?> get props => [liveNews];

}