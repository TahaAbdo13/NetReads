import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120, //مش مهتم بتكون ريسبونسيف لانها كدا كدا >ListView
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  image: const DecorationImage(
                      image: NetworkImage(
                        "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg",
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width *
                    0.5, //عشان ياخد مساحة الشاشة المناسبة
                child: const Text(
                  "Harry Potter and the Goblet of Fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                ),
              ),
              Text(
                "J.K. Rowling",
                style: Styles.textStyle14
                    .copyWith(color: Colors.white.withOpacity(.5)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  children: [
                    const Text(
                      "19.99 €",
                      style: Styles.textStyle20,
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
                      style: Styles.textStyle16
                          .copyWith(fontWeight: FontWeight.w500),
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
          )
        ],
      ),
    );
  }
}
