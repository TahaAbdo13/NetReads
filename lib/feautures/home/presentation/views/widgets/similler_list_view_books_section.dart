import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_books_details.dart';
import 'package:flutter/material.dart';

class SimillerListViewBooksSection extends StatelessWidget {
  const SimillerListViewBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomListViewBooksDetails(),
      ],
    );
  }
}
