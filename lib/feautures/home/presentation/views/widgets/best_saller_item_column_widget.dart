import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSallerItemColumnWidget extends StatelessWidget {
  const BestSallerItemColumnWidget({
    super.key,
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
            "Harry Potter and the Goblet of Fire",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
          ),
        ),
        const Text("J.K. Rowling", style: Styles.textStyle14),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Row(
            children: [
              Text(
                "19.99 €",
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Icon(
                Icons.star,
                color: Colors.orange,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                "4.8",
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(width: 9),
              Text(
                "(2390)",
                style: Styles.textStyle14
                    .copyWith(color: Colors.white.withOpacity(.5)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
