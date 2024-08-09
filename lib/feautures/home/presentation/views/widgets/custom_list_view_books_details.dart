import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomListViewBooksDetails extends StatelessWidget {
  const CustomListViewBooksDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: CustomBookImage(imageUrl: "https://marketplace.canva.com/EAEh_T7-gOQ/1/0/1003w/canva-%D8%BA%D9%84%D8%A7%D9%81-%D9%83%D8%AA%D8%A7%D8%A8-%D8%B5%D9%88%D8%B1%D8%A9-%D9%85%D8%AC%D8%B1%D8%A9-%D8%B4%D8%B1%D8%A7%D8%A6%D8%B7-%D8%B9%D8%B1%D8%B6%D9%8A%D8%A9-%D8%AE%D9%8A%D8%A7%D9%84-%D8%B9%D9%84%D9%85%D9%8A-rG1k7WBoeyo.jpg"),
            );
          }),
    );
  }
}
