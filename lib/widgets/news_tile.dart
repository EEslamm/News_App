import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articale_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articaleModel,
  });
  final ArticaleModel articaleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child:CachedNetworkImage(
            imageUrl: articaleModel.image ?? '',
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articaleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articaleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
/*
Image.network(
articaleModel.image!,
height: 200,
width: double.infinity,
fit: BoxFit.cover,
)),

 */
