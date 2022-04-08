import 'package:news_app/helper/newsdata.dart';

class ArticleModel {
  Source source;
  String url;
  String urlToImage;
  String title;
  String description;
  String content;

  ArticleModel(
      {
        required this.source,
        required this.title,
      required this.content,
      required this.description,
      required this.url,
      required this.urlToImage});

  factory ArticleModel.fromJson(Map<String, dynamic>json){
    return ArticleModel(source: Source.fromJson(json['source']), title: json['title']as String, content: json['content']as String, description: json['description']as String, url: json['url']as String, urlToImage: json['urlToImage']as String);
  }
}
