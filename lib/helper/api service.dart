import 'dart:convert';

import 'package:http/http.dart';

import 'package:news_app/models/news.dart';

class ApiService{
  final url="https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=0f422d94684048759b3ae0f2ed13f3fb";

  Future<List<ArticleModel>> getArticleModel() async{
    Response res = await get(Uri.parse(url));
    if(res.statusCode==200){
      Map<String,dynamic>json =jsonDecode(res.body);

      List<dynamic> body =json['articles'];

      List<ArticleModel> articles =body.map((dynamic item) => ArticleModel.fromJson(item)).toList();

      return articles;
    }
    else{
      throw("cant get the articles");
    }
  }
}

