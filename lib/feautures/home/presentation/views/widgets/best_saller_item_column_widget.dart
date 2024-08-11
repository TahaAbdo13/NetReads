import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:flutter/material.dart';

import 'books_rating.dart';

class BestSallerItemColumnWidget extends StatelessWidget {
  final BookModel bookModel;
  const BestSallerItemColumnWidget({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width *
              0.5, //عشان ياخد مساحة الشاشة المناسبة
          child: Text(
            bookModel.volumeInfo.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
          ),
        ),
        Opacity(
          opacity: .7,
          child: Text(bookModel.volumeInfo.authors?.first??"",
              style: Styles.textStyle14),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Row(
            children: [
              Text(
                "19.99 €",
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const BooksRating(),
            ],
          ),
        )
      ],
    );
  }
}
