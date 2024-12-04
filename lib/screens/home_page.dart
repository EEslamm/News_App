import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
              text: 'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            TextSpan(
              text: 'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 24,
              ),
            ),
          ]),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 18,
              ),
            ),
            NewsListViewsBuilder(
              category: "general",
            ),
          ],
        ),
      ),
    );
  }
}
