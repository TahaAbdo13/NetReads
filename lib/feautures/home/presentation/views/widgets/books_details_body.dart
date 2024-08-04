import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/books_rating.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 44),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.close),
              const Spacer(),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_cart))
            ],
          ),
          const SizedBox(
            height: 36,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: const CustomListViewItem()),
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
          Text(
            "Rudyard Kipling",
            style:
                Styles.textStyle18.copyWith(color: const Color(0xff707070)),
          ),
          const SizedBox(
            height: 14,
          ),
          const BooksRating(),
          const SizedBox(
            height: 37,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.only(bottom: 10, top: 14),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12))),
                  child: Text(
                    "19.99€",
                    style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: AlignmentDirectional.center,
                  padding: const EdgeInsets.only(bottom: 14, top: 13),
                  decoration: const BoxDecoration(
                      color: Color(0xffEF8262),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: Text(
                    "Free preview",
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
