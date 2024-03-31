import 'package:flutter/material.dart';
import 'package:newsapp/core/utils/constants.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*.3,
        decoration: BoxDecoration(color: kPrimaryColor),
      ),
    );
  }
}