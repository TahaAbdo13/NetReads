import 'package:bookly/core/widgets/custom_Text_errMessage.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/presentation/manager/get_best_saller_books_cubit/get_best_saller_books_cubit.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/best_saller_list_view_item.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/shimmer_widgets/shimmer_bestSaller_books_listView_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class BestSallerListViewBuilder extends StatelessWidget {
  const BestSallerListViewBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBestSallerBooksCubit, GetBestSallerBooksState>(
      builder: (context, state) {
        if (state is GetBestSallerBooksSuccess) {
          List<BookModel> bestSallerBooks = state.books;
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(0),
              itemCount: bestSallerBooks.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: BestSallerListViewItem(
                    bookModel: bestSallerBooks[i],
                  ),
                );
              });
        } else if (state is GetBesSallerBooksFailure) {
          return CustomErrMessage(errMessage: state.errMessage);
        } else {
          return const ShimmerBestsallerBooksListviewBuilder();
        }
      },
    );
  }
}
