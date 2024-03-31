part of 'news_cubit.dart';

sealed class NewsState {}

final class NewsInitial extends NewsState {}
final class NewsLoading extends NewsState {}
final class NewsSuccess extends NewsState {
  final List<NewsModel> news;

  NewsSuccess({required this.news});
}
final class NewsFailure extends NewsState {
  final String errMessage;

  NewsFailure({required this.errMessage});
}

