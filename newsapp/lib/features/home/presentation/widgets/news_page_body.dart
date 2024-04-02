import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/features/home/presentation/manager/cubit/news_cubit.dart';
import 'package:newsapp/features/home/presentation/views/details.dart';
import 'package:newsapp/features/home/presentation/widgets/category_item.dart';
import 'package:newsapp/features/home/presentation/widgets/news_item.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsPageBody extends StatelessWidget {
  const NewsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    List categories = [
      const CategoryItem(categoryName: 'Sports', image: 'assets/sports.jpg'),
      const CategoryItem(
          categoryName: 'Technology', image: 'assets/technology.jpg'),
      const CategoryItem(
          categoryName: 'Entertainment', image: 'assets/entertainment.jpg'),
      const CategoryItem(categoryName: 'AI', image: 'assets/ai.jpg'),
      const CategoryItem(categoryName: 'Health', image: 'assets/health.jpg'),
    ];
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsSuccess) {
          return SafeArea(
            child: CustomScrollView(
              slivers: [
                /*     SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * .16,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: ListView.builder(
                        itemCount: categories.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return categories[index];
                        }),
                  ),
                ),
              ), */
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 12,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'News ',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Cloud',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                    ],
                  ),
                ),
                SliverFillRemaining(
                  child: ListView.builder(
                      itemCount: state.news.length,
                      itemBuilder: (context, index) {
                        var c = state.news[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(Details.id, arguments: c);
                          },
                          child: NewsItem(
                            title: state.news[index].title!,
                            image: state.news[index].image ??
                                'https://th.bing.com/th/id/OIP.3dQJdd3puXqdw9pDmNrK4QHaH0?rs=1&pid=ImgDetMain',
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        } else if (state is NewsFailure) {
          return Text(state.errMessage);
        } else if (state is NewsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return const Text('data');
      },
    );
  }
}
