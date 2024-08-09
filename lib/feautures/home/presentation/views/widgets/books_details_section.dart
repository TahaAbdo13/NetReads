import 'package:bookly/core/utils/styles.dart';

import 'package:bookly/feautures/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .21),
          child: const CustomBookImage(
              imageUrl:
                  "https://marketplace.canva.com/EAEh_T7-gOQ/1/0/1003w/canva-%D8%BA%D9%84%D8%A7%D9%81-%D9%83%D8%AA%D8%A7%D8%A8-%D8%B5%D9%88%D8%B1%D8%A9-%D9%85%D8%AC%D8%B1%D8%A9-%D8%B4%D8%B1%D8%A7%D8%A6%D8%B7-%D8%B9%D8%B1%D8%B6%D9%8A%D8%A9-%D8%AE%D9%8A%D8%A7%D9%84-%D8%B9%D9%84%D9%85%D9%8A-rG1k7WBoeyo.jpg"),
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
      ],
    );
  }
}
