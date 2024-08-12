import 'package:bloc/bloc.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/data/repository/home_repo.dart';


import 'package:equatable/equatable.dart';

part 'get_featured_books_state.dart';

class GetFeaturedBooksCubit extends Cubit<GetFeaturedBooksState> {
  GetFeaturedBooksCubit(this.homeRepo) : super(GetFeaturedBooksInitial());
  List<BookModel> searchbooks = [];
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
     
    emit(GetFeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      //برتجعلك اوبجيكت في حالة => success
      //بترجعلك اوبجيكت في حالة ال => failure
      emit(GetFeaturedBooksFailure(failure.errMessag));
    }, (books) {
       searchbooks = [];
      searchbooks.addAll(books);
      emit(GetFeaturedBooksSuccess(books: books));
    });
  }
}
