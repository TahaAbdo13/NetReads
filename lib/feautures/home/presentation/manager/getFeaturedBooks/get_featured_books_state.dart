part of 'get_featured_books_cubit.dart';

sealed class GetFeaturedBooksState extends Equatable {
  const GetFeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class GetFeaturedBooksInitial extends GetFeaturedBooksState {}

final class GetFeaturedBooksSuccess extends GetFeaturedBooksState {
  final List<BookModel> books;

 const GetFeaturedBooksSuccess({required this.books});
}

final class GetFeaturedBooksLoading extends GetFeaturedBooksState {}

final class GetFeaturedBooksFailure extends GetFeaturedBooksState {
  final String errMessage;

  const GetFeaturedBooksFailure(this.errMessage);
}
