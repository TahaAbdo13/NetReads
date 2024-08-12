
import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/search/data/repository/seach_view_repo.dart';
import 'package:dartz/dartz.dart';
class SearchRepoIplementation implements SeachViewRepo {
  @override
  Future<Either<String,List<BookModel>>> searchForBooks(
      {required String search, required List<BookModel> books})async {
    try {
      List<BookModel> searchResult = books.where((book) {
        return book.volumeInfo.title
            .toLowerCase()
            .contains(search.toLowerCase());
      }).toList();

      return right(searchResult);

    } catch (e) {

     return left('The Books Not Found ');
    }
  }
}
