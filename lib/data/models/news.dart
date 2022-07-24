

class News
{
  String? title;
  String? author;
  String? description;
  String? url;
  String?source;
  String? image;
  String? category;
  String? language;
  String? country;
  String? publishedAt;


  News({this.country, this.title,this.description,this.url,this.category,this.author,this.source,this.image,this.language,this.publishedAt});
  factory News.fromJson(Map<String, dynamic> json)=> News(
    country: json["country"].toString(),
    title: json["title"].toString(),
    description: json["description"].toString(),
    url: json["url"].toString(),
    author: json["author"].toString(),
    category: json["category"].toString(),
    source: json["source"].toString(),
    image: json["image"].toString(),
    language: json["language"].toString(),
    publishedAt: json["published_at"].toString()

  );


}