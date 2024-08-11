import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';

import 'package:bookly/feautures/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  final BookModel bookModel;
  const BooksDetailsSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .21),
          child: CustomBookImage(
              bookModel: bookModel),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          bookModel.volumeInfo.title,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors!.first,
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const BooksRating(),
        const SizedBox(
          height: 37,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: BooksAction(),
        ),
      ],
    );
  }
}
