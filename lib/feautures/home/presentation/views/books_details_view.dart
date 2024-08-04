import 'package:flutter/material.dart';
import 'widgets/books_details_body.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BooksDetailsBody(),
      ),
    );
  }
}
