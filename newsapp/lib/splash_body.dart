import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/news.json',
          height: MediaQuery.of(context).size.height * .5,
          width: double.infinity),
    );
  }
}
