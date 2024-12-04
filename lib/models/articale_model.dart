class ArticaleModel
{
  final String? image;
  final String title;
  final String? subTitle;

 const ArticaleModel({required this.image, required this.title, required this.subTitle});
 factory ArticaleModel.fromjson(json)
 {
   return  ArticaleModel(
       image: json['urlToImage'],
       title: json['title'],
       subTitle: json['description']);
 }

}