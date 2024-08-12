import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/search/presentaion/views/manager/search_cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFormField extends StatefulWidget {
  final List<BookModel> books;
  const CustomTextFormField({
    super.key,
    required this.books,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        setState(() {
          BlocProvider.of<SearchCubitCubit>(context)
              .search(search: value, books: widget.books);
        });
      },
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          hintText: "Search",
          suffixIcon:
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
    );
  }
}
