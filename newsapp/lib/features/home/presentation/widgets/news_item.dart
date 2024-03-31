import 'package:flutter/material.dart';
import 'package:newsapp/core/utils/constants.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.title, required this.image});
final String title;
final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .3,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(12),
              image:  DecorationImage(
                  image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          Text(title,style:const TextStyle(fontSize: 15),maxLines: 2,overflow: TextOverflow.ellipsis,),
        ],
      ),
    );
  }
}
