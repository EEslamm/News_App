import 'package:flutter/material.dart';
import 'package:news_app/models/articale_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_views.dart';

class NewsListViewsBuilder extends StatefulWidget {
  const NewsListViewsBuilder({super.key, required this.category});
final String category;
  @override
  State<NewsListViewsBuilder> createState() => _NewsListViewsBuilderState();
}

class _NewsListViewsBuilderState extends State<NewsListViewsBuilder> {
  @override
  var future;
  void initState() {
    super.initState();
     future=NewsServices().GetTopHeadlinsNews(
       category: widget.category,
     );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticaleModel>>(
        future:future ,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListViews(
              articles: snapshot.data!,
            );
          }
          else if(snapshot.hasError)
            {
              return SliverToBoxAdapter(child: Text('oops error, try again'),);
            }
          else
          {
            return
            SliverToBoxAdapter(
                child: SizedBox(
                    height: 500, child: Center(child: CircularProgressIndicator())));
          }
        });
  }
}

/*
class NewsListViewsBuilder extends StatefulWidget {
  const NewsListViewsBuilder({
    super.key,
  });

  @override
  State<NewsListViewsBuilder> createState() => _NewsListViewsBuilderState();
}

class _NewsListViewsBuilderState extends State<NewsListViewsBuilder> {
  List<ArticaleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getNews();
  }

  Future<void> getNews() async {
    articles = await NewsServices().getGeneralNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SliverToBoxAdapter(
        child: SizedBox(
            height: 500, child: Center(child: CircularProgressIndicator())))
        : NewsListViews(
      articles: articles,
    );
  }
}

 */
