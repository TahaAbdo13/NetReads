import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeImplementation implements HomeRepo {
  // implement  => عشان تجبره ينفذ كل الفانكشن اللي بداخل الكلاس


  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks()  {


    throw UnimplementedError();
  }


  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSallerBooks()  {
    throw UnimplementedError();
  }
}
