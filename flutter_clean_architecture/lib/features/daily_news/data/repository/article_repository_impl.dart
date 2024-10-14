import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/constants/constants.dart';
import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/features/daily_news/data/data_source/remote/news_api_service.dart';
import 'package:flutter_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:flutter_clean_architecture/features/daily_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository{
  final NewsApiService _newsApiService;

  ArticleRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticle() async {
    final httpResponse = await _newsApiService.getNewsArticles(
      apiKey: newsAPIKEY,
      country: countryQuery,
      category: categoryQuery 
    );

    if (httpResponse.response.statusCode == 200) {
    return DataSuccess(httpResponse.data);
    } else {
      return DataFailed(
          DioException(
            error: "Error: ${httpResponse.response.statusMessage}",
            response: httpResponse.response,
            requestOptions: httpResponse.response.requestOptions
        )
      );

    }
    
  }

}