import 'package:bookly/feautures/home/presentation/views/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'custom_books_list_view.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBarWidget(),
          SizedBox(
            height: 20,
          ),
          CustomBooksListView()
        ],
      ),
    );
  }
}
