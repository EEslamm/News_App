import 'package:dio/dio.dart';
import 'package:news_app/models/articale_model.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<ArticaleModel>>GetTopHeadlinsNews({required category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?apiKey=2982f40d6e064d99b83125412d1b0ef6&q=$category');
    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articales = jsonData['articles'];

    List<ArticaleModel> articaleList = [];

    for (var artical in articales) {
      ArticaleModel articaleModel =ArticaleModel.fromjson(artical);
      articaleList.add(articaleModel);
    }
    return articaleList;
  }
}
