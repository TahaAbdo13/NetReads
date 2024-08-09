import 'package:bookly/core/widgets/custom_Text_errMessage.dart';
import 'package:bookly/core/widgets/custom_circuler_progress_indicatro.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/presentation/manager/getFeaturedBooks_cubit/get_featured_books_cubit.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBooksListView extends StatelessWidget {
  const CustomBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFeaturedBooksCubit, GetFeaturedBooksState>(
      builder: (context, state) {
        if (state is GetFeaturedBooksSuccess) {
          List<BookModel> booksData = state.books;
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: booksData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: CustomBookImage(imageUrl: booksData[index].volumeInfo.imageLinks.thumbnail,),
                  );
                }),
          );
        } else if (state is GetFeaturedBooksFailure) {
          return CustomErrMessage(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
