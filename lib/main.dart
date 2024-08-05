import "package:bookly/constants.dart";
import "package:bookly/core/utils/app_router.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark()
              .textTheme)), //هي متعرفة على اللايت ثيم عشان كدا اللون هيبقى اسود=> عرفها على الارك ثيم
      routerConfig: AppRouter.router,
    );
  }
}
//1- separte your project to 2 folders
// 1- feauture folder => بتحط فيه صفحة او صفحتيه ليهم نفس ال => feature
//1- core folder=> بتحط فيه الحاجات المتشابهةبين كل ال => feuture=> عشان متكرش حاجة
//2- هنستخدم => get statemanagemet => عشان ندير بيها التنقل بين الصفحات
