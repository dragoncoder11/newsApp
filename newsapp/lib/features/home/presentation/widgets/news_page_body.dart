import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newsapp/features/home/presentation/widgets/category_item.dart';
import 'package:newsapp/features/home/presentation/widgets/news_item.dart';

class NewsPageBody extends StatelessWidget {
  const NewsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    List categories = [
      const CategoryItem(categoryName: 'bhbchb', image: 'assets/help.png'),
      const CategoryItem(categoryName: 'fefd', image: 'assets/help.png'),
      const CategoryItem(categoryName: 'bhtuytjbchb', image: 'assets/help.png'),
      const CategoryItem(categoryName: 'ppppp', image: 'assets/help.png'),
    ];
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .13,
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
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverFillRemaining(
            child: ListView.builder(itemBuilder: (context, index) {
              return const NewsItem();
            }),
          )
        ],
      ),
    );
  }
}
