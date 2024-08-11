import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // هنا بتوضح ال Home => بيحصل فيها اي
  //Function without implementaion
  //بتجبر الشخص اللي هيشتغل على الريبو دي ينفذ الفانكشن اللي جواها وكمان يعمل
  //return ==> على حسب ما انت محدد
  //انت كمان بتتحكم في اللي هتستقبله ال => method
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchBestSallerBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimillerBooks({required String category});
}
//في حالة الايرور انت متعرفش هترجع اي الافضل انك تعمل class هو ده اللي ترجعه وكل ايرور يقابلك تخليه ابن لهذا الكلاس