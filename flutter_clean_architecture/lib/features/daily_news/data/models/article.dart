import 'package:flutter_clean_architecture/features/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    super.id,
    super.author,
    super.title,
    super.description,
    super.url,
    super.urlToImage,
    super.publishedAt,
    super.content,
  });

  // Factory method to convert JSON into ArticleModel
  factory ArticleModel.fromJson(Map<String, dynamic> articleModelData) {
    return ArticleModel(
      author: articleModelData['author'] ?? "",
      title: articleModelData['title'] ?? "",
      description: articleModelData['description'] ?? "",
      url: articleModelData['url'] ?? "",
      urlToImage: articleModelData['urlToImage'] ?? "",
      publishedAt: articleModelData['publishedAt'] ?? "",
      content: articleModelData['content'] ?? "",
    );
  }
}
