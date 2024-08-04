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
              child: CustomBookImage(),
            );
          }),
    );
  }
}
