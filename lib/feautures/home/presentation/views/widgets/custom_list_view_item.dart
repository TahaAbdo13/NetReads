
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String imageUrl;
  const CustomBookImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            errorWidget: (context, url, error) =>const Icon(Icons.error),
            fit: BoxFit.fill,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                      colorFilter: const ColorFilter.mode(
                          Colors.white, BlendMode.colorBurn))),
            ),
          ),
        ));
  }
}
