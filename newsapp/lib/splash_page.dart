import 'package:flutter/material.dart';
import 'package:newsapp/features/home/presentation/views/news_page.dart';
import 'package:newsapp/splash_body.dart';

import 'core/utils/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
   static String id='splash page';
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.of(context).pushReplacementNamed(NewsPage.id);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SplashBody(),
    );
  }
}