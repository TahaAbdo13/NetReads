part of 'get_similler_book_cubit_cubit.dart';

sealed class GetSimillerBookCubitState extends Equatable {
  const GetSimillerBookCubitState();

  @override
  List<Object> get props => [];
}

final class GetSimillerBookCubitInitial extends GetSimillerBookCubitState {}

final class GetSimillerBookCubitSuccess extends GetSimillerBookCubitState {
  final List<BookModel> books;

 const GetSimillerBookCubitSuccess({required this.books});
}

final class GetSimillerBookCubitLoading extends GetSimillerBookCubitState {}

final class GetSimillerBookCubitFailure extends GetSimillerBookCubitState {
  final String errMessage;

  const GetSimillerBookCubitFailure({required this.errMessage});
}
