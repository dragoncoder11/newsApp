import 'package:bloc/bloc.dart';
import 'package:newsapp/features/home/data/models/news_model.dart';
import 'package:newsapp/features/home/data/repos/news_repo.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.newsRepo) : super(NewsInitial());

  final NewsRepo newsRepo;
  Future fetchNews({required String category}) async {

    try {
      emit(NewsLoading(),);
  var result = await newsRepo.fetchNews(category: category);
  result.fold((failure) {
    emit(
      NewsFailure(
        errMessage: failure.toString(),
      ),
    );
  }, (news) {
    emit(
      NewsSuccess(news: news),
    );
  });
} on Exception catch (e) {
  return (e.toString(),);
}
  }
}
