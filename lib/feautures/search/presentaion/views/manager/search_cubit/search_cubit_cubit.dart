import 'package:bloc/bloc.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/search/data/repository/seach_view_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit(this.seachViewRepo) : super(SearchCubitInitial());
  final SeachViewRepo seachViewRepo;
  void search({required String search, required List<BookModel> books}) async {
    emit(SearchCubitLoading());
    var response =
        await seachViewRepo.searchForBooks(search: search, books: books);
    response.fold((failure) {
      emit(SearchCubitFailure(errMessage: failure));
    }, (searchReasult) {
      emit(SearchCubitSuccess(searchReaslut: searchReasult));
    });
  }
}
