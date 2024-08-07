import 'package:bloc/bloc.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:equatable/equatable.dart';

part 'get_featured_books_state.dart';

class GetFeaturedBooksCubit extends Cubit<GetFeaturedBooksState> {
  GetFeaturedBooksCubit() : super(GetFeaturedBooksInitial());
}
