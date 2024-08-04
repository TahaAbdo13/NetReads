import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          "4.8",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text("(2390)",
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}
