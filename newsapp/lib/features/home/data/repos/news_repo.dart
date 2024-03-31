import 'package:dartz/dartz.dart';
import 'package:newsapp/features/home/data/models/news_model.dart';

  abstract class NewsRepo{
    Future <Either<Error,List<NewsModel>>>fetchNews({required String category});
  }