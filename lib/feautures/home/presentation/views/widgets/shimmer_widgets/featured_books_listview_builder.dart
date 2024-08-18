import 'package:flutter/material.dart';
import 'shimmer_featured_books_list_view_builder_item.dart';

class ShimmerFeaturedBooksListViewBuilder extends StatelessWidget {
  const ShimmerFeaturedBooksListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return const  ShimmerFeaturedBooksListViewBuilderItem();
          }),
    );
  }
}
