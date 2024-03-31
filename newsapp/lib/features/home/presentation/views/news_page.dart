import 'package:flutter/material.dart';

import '../widgets/news_page_body.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});
 static String id='news page';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewsPageBody(),
    );
  }
}
