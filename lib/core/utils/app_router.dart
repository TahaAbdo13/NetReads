import 'package:bookly/feautures/home/data/models/book_model/book.mdel.dart';
import 'package:bookly/feautures/home/presentation/views/books_details_view.dart';
import 'package:bookly/feautures/home/presentation/views/home_view.dart';

import 'package:bookly/feautures/search/data/repository/search_repo_iplementation.dart';
import 'package:bookly/feautures/search/presentaion/views/manager/search_cubit/search_cubit_cubit.dart';
import 'package:bookly/feautures/search/presentaion/views/search_view.dart';
import 'package:bookly/feautures/splash/presetation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeViewPath = "/HomeView";
  static const String bookDetailsViewPath = "/BookDetailsView";
  static const String searchViewPath = "/SearchView";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/', //هي دي البداية
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
          path: homeViewPath, builder: (context, state) => const HomeView()),
      GoRoute(
          path: bookDetailsViewPath,
          builder: (context, state) =>
              BooksDetailsView(bookModel: state.extra as BookModel)),
      GoRoute(
          path: searchViewPath,
          builder: (context, state) => BlocProvider(
                create: (context) => SearchCubitCubit(SearchRepoIplementation()),
                child:  SearchView(books: state.extra as List<BookModel>),
              ))
    ],
  );
}
