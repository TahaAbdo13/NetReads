import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerFeaturedBooksListViewBuilderItem extends StatelessWidget {
  const ShimmerFeaturedBooksListViewBuilderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .25,
          child: Shimmer.fromColors(
            baseColor: Colors.grey,
            highlightColor: Colors.grey.withOpacity(.5),
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ));
  }
}
