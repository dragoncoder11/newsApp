import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.categoryName, required this.image});
  final String categoryName;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        height: MediaQuery.of(context).size.height * .13,
        width: MediaQuery.of(context).size.width * .4,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Text(categoryName),
        ),
      ),
    );
  }
}
