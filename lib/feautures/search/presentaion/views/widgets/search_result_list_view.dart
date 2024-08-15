import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_Text_errMessage.dart';
import 'package:bookly/core/widgets/custom_circuler_progress_indicatro.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/presentation/views/widgets/best_saller_list_view_item.dart';
import 'package:bookly/feautures/search/presentaion/views/manager/search_cubit/search_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubitCubit, SearchCubitState>(
      builder: (context, state) {
        if (state is SearchCubitSuccess) {
          List<BookModel> searchReasult = state.searchReaslut;
          if (searchReasult.isEmpty) {
            return const Center(
                child: Text(
              "This Item Not Found ",
              style: Styles.textStyle20,
            ));
          } else {
            return ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: searchReasult.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: BestSallerListViewItem(
                      bookModel: searchReasult[i],
                    ),
                  );
                });
          }
        } else if (state is SearchCubitFailure) {
          return CustomErrMessage(errMessage: state.errMessage);
        } else if (state is SearchCubitLoading) {
          return const CustomCircularProgressIndicator();
        } else if (state is SearchCubitEmpty) {
          return const Center(
              child: Text(
            "Seacrh for item",
            style: Styles.textStyle20,
          ));
        } else {
          return const Center(
              child: Text(
            "Seacrh for item",
            style: Styles.textStyle20,
          ));
        }
      },
    );
  }
}
