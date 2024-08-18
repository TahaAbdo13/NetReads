import 'package:bookly/feautures/home/presentation/views/widgets/shimmer_widgets/shimmer_featured_books_list_view_builder_item.dart';
import 'package:flutter/material.dart';

class ShimmerSimillerBooksListViewBuilder extends StatelessWidget {
  const ShimmerSimillerBooksListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ShimmerFeaturedBooksListViewBuilderItem();
          }),
    );
  }
}
