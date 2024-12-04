import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_cards.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
final List<Model>categoryList=const
[
  Model(image: 'assets/general.png', name: 'General'),
  Model(image: 'assets/business.png', name: 'Business'),
  Model(image: 'assets/entertaiment.png', name: 'Entertainment'),
  Model(image: 'assets/health.png', name: 'Health'),
  Model(image: 'assets/technology.png', name: 'Technology'),
  Model(image: 'assets/science.png', name: 'Science'),
  Model(image: 'assets/sport.png', name: 'Sports'),


];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:categoryList.length,
          itemBuilder: (context,index)
          {
            return  CategoryCards(
              model: categoryList[index],
            );
          }
      ),
    );
  }
}
