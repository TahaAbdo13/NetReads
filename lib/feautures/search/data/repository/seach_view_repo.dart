
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:dartz/dartz.dart';

abstract class SeachViewRepo {
  Future<Either<String,List<BookModel>>> searchForBooks(
      {required String search,required List<BookModel> books});
}
