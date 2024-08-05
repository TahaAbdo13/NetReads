import 'package:bookly/feautures/home/presentation/views/widgets/best_saller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: 20,
        itemBuilder: (context, i) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: BestSallerListViewItem(),
          );
        });
  }
}
