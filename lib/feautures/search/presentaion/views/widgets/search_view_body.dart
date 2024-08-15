import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/search/presentaion/views/manager/search_cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_text_form_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatefulWidget {
  final List<BookModel> books;
  const SearchViewBody({super.key, required this.books});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  @override
  Widget build(BuildContext context) {
    print('1111111111111111111 ========================================');
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            books: widget.books,
            onChanged: (value) {
              BlocProvider.of<SearchCubitCubit>(context)
                  .search(search: value, books: widget.books);
              if (value.isEmpty) {
                setState(() {
                  BlocProvider.of<SearchCubitCubit>(context).resultSearch = [];
                });
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const Text("Search Result", style: Styles.textStyle18),
          const SizedBox(
            height: 20,
          ),
          const Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
