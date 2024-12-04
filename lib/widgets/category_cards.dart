import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_view.dart';

class CategoryCards extends StatelessWidget {
  const CategoryCards({super.key, required this.model,});

  final Model model;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)
        {
          return CategoryView(category: model.name,

          );
        }
        ),);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          height: 90,
          width: 160,
          child: Center(
            child: Text(
              model.name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image:DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(model.image),
          ),
          )
        ),
      ),
    );
  }
}
