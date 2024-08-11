import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookImage extends StatelessWidget {
  final BookModel bookModel;
  const CustomBookImage({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.bookDetailsViewPath, extra: bookModel);
      },
      child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: bookModel.volumeInfo.imageLinks.smallThumbnail,
              errorWidget: (context, url, error) => const Icon(Icons.error),
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
          )),
    );
  }
}
