import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/best_saller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(0),
        itemCount: 0,
        itemBuilder: (context, i) {
          List<BookModel> books = [];
          return Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: BestSallerListViewItem(
              bookModel: books[i],
            ),
          );
        });
  }
}
