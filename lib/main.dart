import "package:bookly/constants.dart";
import "package:bookly/core/utils/app_router.dart";
import "package:bookly/core/utils/boc_observer.dart";
import "package:bookly/core/utils/service_locator.dart";
import "package:bookly/feautures/home/data/repository/home_repo_implementation.dart";
import "package:bookly/feautures/home/presentation/manager/getFeaturedBooks_cubit/get_featured_books_cubit.dart";
import "package:bookly/feautures/home/presentation/manager/get_best_saller_books_cubit/get_best_saller_books_cubit.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  Bloc.observer = SimpleBlocObserver();
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetFeaturedBooksCubit(
              getIt.get<HomeImplementation>()
                ..fetchFeaturedBooks() //كدا انت خدت نسخة من اوبجيكت انت كنت عاملة قبل كدا
              ),
        ),
        BlocProvider(
          create: (context) =>
              GetBestSallerBooksCubit(getIt.get<HomeImplementation>()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true).copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark()
                .textTheme)), //هي متعرفة على اللايت ثيم عشان كدا اللون هيبقى اسود=> عرفها على الارك ثيم
        routerConfig: AppRouter.router,
      ),
    );
  }
}
//1- separte your project to 2 folders
// 1- feauture folder => بتحط فيه صفحة او صفحتيه ليهم نفس ال => feature
//1- core folder=> بتحط فيه الحاجات المتشابهةبين كل ال => feuture=> عشان متكرش حاجة
//2- هنستخدم => get statemanagemet => عشان ندير بيها التنقل بين الصفحات
