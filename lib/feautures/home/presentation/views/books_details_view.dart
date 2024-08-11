import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/data/repository/home_repo_implementation.dart';
import 'package:bookly/feautures/home/presentation/manager/get_similler_books_cubit/get_similler_book_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/books_details_body.dart';

class BooksDetailsView extends StatelessWidget {
  final BookModel bookModel;
  const BooksDetailsView({super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetSimillerBookCubitCubit(getIt.get<HomeImplementation>())
            ..fetchSimmillerBooks(category: bookModel.volumeInfo.categories![0]),
      child:  SafeArea(
        child: Scaffold(
          body: BooksDetailsBody(
            bookModel: bookModel,
          ),
        ),
      ),
    );
  }
}
