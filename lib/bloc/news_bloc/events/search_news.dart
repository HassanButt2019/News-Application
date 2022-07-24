import 'news_event.dart';

class SearchNews extends NewsEvent
{
  final String? query;
  SearchNews({required this.query});


  @override

  List<Object?> get props => [query];

}