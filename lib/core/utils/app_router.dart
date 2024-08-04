import 'package:bookly/feautures/home/presentation/views/books_details_view.dart';
import 'package:bookly/feautures/home/presentation/views/home_view.dart';
import 'package:bookly/feautures/splash/presetation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeViewPath = "/HomeView";
  static const String bookDetailsViewPath = "/BookDetailsView";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',//هي دي البداية
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: homeViewPath, builder: (context, state) => const HomeView()),
      GoRoute(path: bookDetailsViewPath, builder: (context, state) => const BooksDetailsView())
    ],
  );
}
