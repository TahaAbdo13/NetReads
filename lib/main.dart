import "package:bookly/constants.dart";
import "package:bookly/feautures/splash/presetation/views/splash_view.dart";
import "package:flutter/material.dart";
import "package:get/get_navigation/src/root/get_material_app.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark()
              .textTheme)), //هي متعرفة على اللايت ثيم عشان كدا اللون هيبقى اسود=> عرفها على الارك ثيم
      home: const SplashView(),
    );
  }
}
//1- separte your project to 2 folders
     // 1- feauture folder => بتحط فيه صفحة او صفحتيه ليهم نفس ال => feature
     //1- core folder=> بتحط فيه الحاجات المتشابهةبين كل ال => feuture=> عشان متكرش حاجة 
//2- هنستخدم => get statemanagemet => عشان ندير بيها التنقل بين الصفحات