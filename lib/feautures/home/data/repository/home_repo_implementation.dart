import 'package:bookly/core/utils/api_sevices.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeImplementation implements HomeRepo {
  // implement  => عشان تجبره ينفذ كل الفانكشن اللي بداخل الكلاس
  final ApiSevices apiSevices;
  HomeImplementation(this.apiSevices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> data =
          await apiSevices.get(endPoint: "q=programming");
      List<BookModel> booksData = [];

      for (var item in data['items']) {
        try {
          BookModel bookModel = BookModel.fromJson(item);
          booksData.add(bookModel);
        } catch (e) {
          //كدا انت هتعرف باظبط فين الكتاب اللي راجعلك ب null
          BookModel bookModel = BookModel.fromJson(item);
          booksData.add(bookModel);
        }

        //لازم تحدد انهي جنب للي هتعمله ريترن
      }
      return right(booksData);
    } catch (e) {
      if (e is DioException) {
        // if (e.response!.statusCode == 401) {
        //   return left(e.response!.data["error"]["message"]);//انك تنفذ ال check هنا مش صح عان هتخسدم الكلام ده اكثر من مرة لازم ترجع الاوبجيكت جاهز علطول
        //   // يبقى انت هنا محتاج تستخدم فاكتوري كونستراكتور بحث ترجع الاوبجيكت بالرسالة الللي انت عايزها في حالة كل ايرور
        // }
        return left(ServerError.fromDioExeption(e));
      } else {
        return left(ServerError(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSallerBooks() async {
    try {
      Map<String, dynamic> data = await apiSevices.get(
          endPoint: "Filtering=free-ebooks&Sorting=newest&q=computer science");
      List<BookModel> booksData = [];

      for (var item in data['items']) {
        BookModel bookModel = BookModel.fromJson(item);
        booksData.add(bookModel);
        //لازم تحدد انهي جنب للي هتعمله ريترن
      }
      return right(booksData);
    } catch (e) {
      if (e is DioException) {
        // if (e.response!.statusCode == 401) {
        //   return left(e.response!.data["error"]["message"]);//انك تنفذ ال check هنا مش صح عان هتخسدم الكلام ده اكثر من مرة لازم ترجع الاوبجيكت جاهز علطول
        //   // يبقى انت هنا محتاج تستخدم فاكتوري كونستراكتور بحث ترجع الاوبجيكت بالرسالة الللي انت عايزها في حالة كل ايرور
        // }
        return left(ServerError.fromDioExeption(e));
      } else {
        return left(ServerError(e.toString()));
      }
    }
  }


  @override
  Future<Either<Failure, List<BookModel>>> fetchSimillerBooks(
      {required String category}) async {
    try {
      Map<String, dynamic> data = await apiSevices.get(
          endPoint:
              "Filtering=free-ebooks&Sorting=newest&Sorting=$category&q=computer science");
      List<BookModel> booksData = [];
      for (var item in data['items']) {
        try {
          BookModel bookModel = BookModel.fromJson(item);
          booksData.add(bookModel);
        } catch (e) {
          BookModel bookModel = BookModel.fromJson(item);
          booksData.add(bookModel);
        }
      }
      return right(booksData);
    } catch (e) {
      if (e is DioException) {
        return left(ServerError.fromDioExeption(e));
      }
      return Left(ServerError(e.toString()));
    }
  }
}
