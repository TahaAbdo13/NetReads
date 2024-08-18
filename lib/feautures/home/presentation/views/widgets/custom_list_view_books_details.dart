import 'package:bookly/core/widgets/custom_Text_errMessage.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/presentation/manager/get_similler_books_cubit/get_similler_book_cubit_cubit.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'shimmer_widgets/shimmer_similler_books_list_view_builder.dart';
class CustomListViewBooksDetails extends StatelessWidget {
  const CustomListViewBooksDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetSimillerBookCubitCubit, GetSimillerBookCubitState>(
      builder: (context, state) {
        if (state is GetSimillerBookCubitSuccess) {
          List<BookModel> simillerBooks = state.books;
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: simillerBooks.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: CustomBookImage(bookModel: simillerBooks[index]),
                  );
                }),
          );
        } else if (state is GetSimillerBookCubitFailure) {
          return CustomErrMessage(errMessage: state.errMessage);
        } else {
          return const  ShimmerSimillerBooksListViewBuilder();
        }
      },
    );
  }
}
