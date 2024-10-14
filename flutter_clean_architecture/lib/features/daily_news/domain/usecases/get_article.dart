
import 'package:flutter_clean_architecture/core/usecases/usecase.dart';
import 'package:flutter_clean_architecture/features/daily_news/domain/repository/article_repository.dart';

import '../../../../core/resources/data_state.dart';
import '../entities/article.dart';

class GetArticleUseCase implements Usecase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;
  GetArticleUseCase(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void param}) {
    return _articleRepository.getNewsArticle();
  }

}
