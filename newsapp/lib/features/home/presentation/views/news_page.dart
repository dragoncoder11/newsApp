import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/features/home/data/repos/news_repo_implement.dart';
import 'package:newsapp/features/home/presentation/manager/cubit/news_cubit.dart';

import '../widgets/news_page_body.dart';

class NewsPage extends StatelessWidget {
   NewsPage({super.key});
  static String id = 'news page';
  NewsRepoImplement newsRepoImplement=NewsRepoImplement();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewsCubit>(
      create: (context) => NewsCubit(newsRepoImplement)..fetchNews(category: 'everything'),
      child: const Scaffold(
        body: NewsPageBody(),
      ),
    );
  }
}
