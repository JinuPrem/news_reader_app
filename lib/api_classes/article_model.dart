import 'package:news_reader_app/api_classes/source_model.dart';

class Article{
  Source? source;
  String? urlToImage;
  String? title;
  String? publishedAt;
  String? description;
  String? author;

  Article(
  {this.source,
    this.urlToImage,
    this.title,
    this.publishedAt,
    this.description,
    this.author

});


  factory Article.fromJson(Map<String , dynamic>json){
    return Article(
      source: Source.fromJson(json['source']),
          urlToImage: json['urlToImage'],
      title: json['title'],
      publishedAt: json['publishedAt'],
      description: json['description'],
      author: json['author'],
    );
  }
}