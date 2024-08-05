import 'package:bookly/feautures/home/presentation/views/widgets/books_details_section.dart';

import 'package:bookly/feautures/home/presentation/views/widgets/similler_list_view_books_section.dart';
import 'package:flutter/material.dart';
import 'custom_books_details_app_bar.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(//مينفعش تستخدم معاها => Expandded widget
        slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              CustomBooksDetailsAppBar(),
              SizedBox(
                height: 36,
              ),
              BooksDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 49,
                ),
              ),
              SimillerListViewBooksSection(),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
