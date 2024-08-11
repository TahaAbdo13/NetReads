import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/books_details_section.dart';

import 'package:bookly/feautures/home/presentation/views/widgets/similler_list_view_books_section.dart';
import 'package:flutter/material.dart';
import 'custom_books_details_app_bar.dart';

class BooksDetailsBody extends StatelessWidget {
  final BookModel bookModel;
  const BooksDetailsBody({
    super.key, required this.bookModel,
  });
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(//مينفعش تستخدم معاها => Expandded widget
        slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const CustomBooksDetailsAppBar(),
              const SizedBox(
                height: 36,
              ),
              BooksDetailsSection(
                bookModel: bookModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 49,
                ),
              ),
              const SimillerListViewBooksSection(),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
