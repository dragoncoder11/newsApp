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
        height: MediaQuery.of(context).size.height * .16,
        width: MediaQuery.of(context).size.width * .44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Text(categoryName,style:const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
