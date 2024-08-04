import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomBooksListView extends StatelessWidget {
  final double size;
  const CustomBooksListView({super.key, required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * size,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: CustomBookImage(),
            );
          }),
    );
  }
}
