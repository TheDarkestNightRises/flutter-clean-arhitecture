import 'package:flutter_clean_architecture/features/daily_news/data/models/article.dart';

class ArticleResponseModel {
  List<ArticleModel> articles;

  // Constructor for the response model
  ArticleResponseModel({required this.articles});

  // Factory method to convert JSON response into a response model
  factory ArticleResponseModel.fromJson(Map<String, dynamic> articleResponseData) {
    return ArticleResponseModel(
        articles: ((articleResponseData['articles'] ?? []) as List<dynamic>)
            .map((dynamic article) => ArticleModel.fromJson(article))
            .toList());
  }
}
