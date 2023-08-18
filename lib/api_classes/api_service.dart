import 'dart:convert';

import 'package:news_reader_app/api_classes/article_model.dart';
import 'package:http/http.dart' as http;

class ApiService{
  Future<List<Article>> getArticle()async{
  final url = 'https://newsapi.org/v2/everything?q=bitcoin&apiKey=c8f05a09ab014cd9b9d77dac77eeea04';

      var response = await http.get(Uri.parse(url));
  if(response.statusCode ==200){
    var body = json.decode(response.body);
    List<Article> _data =List<Article>.from(body['articles'].map((e)=>Article.fromJson(e)).toList());
    return _data;
  }else{
    List<Article> _data=[];
    return _data;
    }
  }
}