import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'custom_books_details_app_bar.dart';
import 'books_action.dart';
import 'custom_list_view_books_details.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .21),
                child: const CustomBookImage(),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "The Jungle Book",
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 4,
              ),
              const Opacity(
                opacity: .7,
                child: Text(
                  "Rudyard Kipling",
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
              const Expanded(
                child: SizedBox(
                  height: 49,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style:
                      Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomListViewBooksDetails(),
            const  SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
