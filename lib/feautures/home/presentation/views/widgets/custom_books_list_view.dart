import 'package:bookly/core/widgets/custom_Text_errMessage.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/presentation/manager/getFeaturedBooks_cubit/get_featured_books_cubit.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
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
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: booksData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: CustomBookImage(
                      bookModel: booksData[index],
                    ),
                  );
                }),
          );
        } else if (state is GetFeaturedBooksFailure) {
          return CustomErrMessage(
            errMessage: state.errMessage,
          );
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * .25,
                        child: Shimmer.fromColors(
                          baseColor: Colors.grey,
                          highlightColor: Colors.grey.withOpacity(.5),
                          child: AspectRatio(
                            aspectRatio: 2.7 / 4,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ));
                }),
          );
        }
      },
    );
  }
}
