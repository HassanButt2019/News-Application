import 'package:http/http.dart' as http;


class NewsDataProvider
{

  final _liveNews = "http://api.mediastack.com/v1/news?access_key=7b8d0918fae45d7c3519ce287014acf1&countries=us,gb,de";

  Future<http.Response> searchNews({String query='Unknown'})async
  {
    String  searchUrl = "http://api.mediastack.com/v1/sources?access_key=7b8d0918fae45d7c3519ce287014acf1&keywords=$query";
    http.Response rawData = await http.get(Uri.parse(searchUrl));
    return rawData;
  }

  Future<http.Response> getLatestNews()async
  {
    http.Response rawData = await http.get(Uri.parse(_liveNews));
    return rawData;
  }

}

