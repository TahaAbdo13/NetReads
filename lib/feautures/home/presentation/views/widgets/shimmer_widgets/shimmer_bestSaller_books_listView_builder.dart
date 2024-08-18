import 'package:bookly/feautures/home/presentation/views/widgets/shimmer_widgets/shimmer_featured_books_list_view_builder_item.dart';
import 'package:flutter/material.dart';
import 'shimmer_best_saller_colmun_items.dart';
class ShimmerBestsallerBooksListviewBuilder extends StatelessWidget {
  const ShimmerBestsallerBooksListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0),
        itemCount: 10,
        itemBuilder: (context, i) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: SizedBox(
              height: 120, //مش مهتم بتكون ريسبونسيف لانها كدا كدا >ListView
              child: Row(
                children: [
                  ShimmerFeaturedBooksListViewBuilderItem(),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShimmerBestSallerColmunItems(
                        width: 0.5,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      ShimmerBestSallerColmunItems(
                        width: 0.5,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      ShimmerBestSallerColmunItems(
                        width: 0.35,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      ShimmerBestSallerColmunItems(
                        width: 0.35,
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
