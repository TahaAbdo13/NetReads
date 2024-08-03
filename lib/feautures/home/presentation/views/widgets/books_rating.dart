import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "4.8",
          style: Styles.textStyle16
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(width: 5),
        Text(
          "(2390)",
          style:
              Styles.textStyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
