import 'package:flutter/material.dart';
import 'package:newsapp/features/home/presentation/views/news_page.dart';
import 'package:newsapp/splash_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(scaffoldBackgroundColor:kPrimaryColor),
      initialRoute: SplashPage.id,
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        NewsPage.id: (context) => const NewsPage(),
      },
    );
  }
}
