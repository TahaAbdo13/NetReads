import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_books_list_view.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'custom_books_details_app_bar.dart';
import 'custom_button.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 44),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
            const SizedBox(
              height: 49,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "You can also like",
                  style: Styles.textStyle14,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomBooksListView(
              size: .15,
            )
          ],
        ),
      ),
    );
  }
}
