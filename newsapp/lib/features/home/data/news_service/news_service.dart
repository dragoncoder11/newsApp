import 'package:dio/dio.dart';
import '../../../../core/utils/constants.dart';

class NewsService {
  final Dio dio;
  final baseUrl = 'https://newsapi.org/v2/';
  NewsService({required this.dio});
  Future getNews({required String category}) async {
    try {
      var response = await dio.get(
          '${baseUrl}everything?q=$category&apiKey=$apiKey');
      var data = response.data;
      return data;
    } on Exception catch (e) {
      // TODO
      print(e.toString());
    }
  }
}
