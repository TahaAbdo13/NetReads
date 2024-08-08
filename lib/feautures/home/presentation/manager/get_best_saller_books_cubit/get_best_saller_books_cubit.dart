import 'package:bloc/bloc.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/data/repository/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'get_best_saller_books_state.dart';

class GetBestSallerBooksCubit extends Cubit<GetBestSallerBooksState> {
  GetBestSallerBooksCubit(this.homeRepo) : super(GetBestSallerBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchBestSallerBooks() async {
    emit(GetBestSallerBooksLoading());
    var result = await homeRepo.fetchBestSallerBooks();
    result.fold((failure) {
      emit(GetBesSallerBooksFailure(failure.errMessag));
    }, (books) {
      emit(GetBestSallerBooksSuccess(books: books));
    });
  }
}
