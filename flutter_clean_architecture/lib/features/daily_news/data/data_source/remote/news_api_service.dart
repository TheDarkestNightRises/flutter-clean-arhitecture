import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/constants/constants.dart';
import 'package:flutter_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart';
part 'news_api_service.g.dart'; // Ensure this is present for code generation

@RestApi(baseUrl: newsAPIBaseUrl)
abstract class NewsApiService {
  // Make sure the constructor syntax is correct
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    @Query("apiKey") String? apiKey,
    @Query("country") String? country,
    @Query("country") String? category,
  });
}
