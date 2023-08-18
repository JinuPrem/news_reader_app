import 'package:flutter/material.dart';
import 'package:news_reader_app/api_classes/article_model.dart';

class News extends StatelessWidget {
  final Article article;
  const News({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("News Report"),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Visibility(
            visible: article.urlToImage != null,
            replacement: const Icon(Icons.image_not_supported),
            child: Image(
                image: NetworkImage(article.urlToImage
                    .toString())), // Icon when urlToImage is null
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              article.title.toString(),
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(article.description.toString(),
                style: const TextStyle(fontSize: 15, color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.bottomRight,
                child: Text(article.author.toString(),
                    style: const TextStyle(fontSize: 15, color: Colors.black))),
          ),
        ],
      ),
    );
  }
}
