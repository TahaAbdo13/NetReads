import 'package:bloc/bloc.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/data/repository/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'get_similler_book_cubit_state.dart';

class GetSimillerBookCubitCubit extends Cubit<GetSimillerBookCubitState> {
  GetSimillerBookCubitCubit(this.homeRepo)
      : super(GetSimillerBookCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimmillerBooks({required String category}) async {
    emit(GetSimillerBookCubitLoading());
    var result = await homeRepo.fetchSimillerBooks(category: category);
    result.fold((failure) {
      emit(GetSimillerBookCubitFailure(errMessage: failure.errMessag));
    }, (books) {
      emit(GetSimillerBookCubitSuccess(books: books));
    });
  }
}
