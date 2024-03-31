import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:newsapp/features/home/data/models/news_model.dart';
import 'package:newsapp/features/home/data/news_service/news_service.dart';
import 'package:newsapp/features/home/data/repos/news_repo.dart';

class NewsRepoImplement implements NewsRepo{
  NewsService newsService=NewsService(dio: Dio(),);
  @override
  Future<Either<Error, List<NewsModel>>> fetchNews({required String category}) async{
    try {
  var data = await newsService.getNews(category: category);
  var articles=data["articles"];
  List <NewsModel> news=[];
  for(var i in articles ){
    news.add(NewsModel.fromJson(i));
  }
  return right(news);
}  catch (e) {
  // TODO
return left(e.toString()as Error);
}

  }
  
}