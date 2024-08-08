part of 'get_best_saller_books_cubit.dart';

sealed class GetBestSallerBooksState extends Equatable {
  const GetBestSallerBooksState();

  @override
  List<Object> get props => [];
}

final class GetBestSallerBooksInitial extends GetBestSallerBooksState {}
final class GetBestSallerBooksSuccess extends GetBestSallerBooksState {
  final List<BookModel> books;

 const GetBestSallerBooksSuccess({required this.books});
}

final class GetBestSallerBooksLoading extends GetBestSallerBooksState {}

final class GetBesSallerBooksFailure extends GetBestSallerBooksState {
  final String errMessage;

  const GetBesSallerBooksFailure(this.errMessage);
}

