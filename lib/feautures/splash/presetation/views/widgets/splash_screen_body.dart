import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:svg_flutter/svg.dart';

import 'text_sliding_animation_builder.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Offset> slidingAnimationtext;
  late Animation<double> fadeAnimationlogoImage;

  @override
  void initState() {
    initAnimatedFunction();
    navigateMethod(context);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeTransition(
          opacity: fadeAnimationlogoImage,
          child: SvgPicture.asset(
            AssetsData.logoPath,
            width: 70,
            height: 70,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        TextSlidingAnimationBuilder(slidingAnimation: slidingAnimationtext)
      ],
    );
  }

  void navigateMethod(context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool isFirst = sharedPreferences.getBool("isFirst") ?? false;

    String route;
    if (isFirst==false) {
        sharedPreferences.setBool("isFirst", true);
      route = AppRouter.onBoardingScreen;
    
    } else {
      route = AppRouter.homeViewPath;
    }
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(route);
    });
  }

  void initAnimatedFunction() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimationtext =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    fadeAnimationlogoImage =
        Tween<double>(begin: 0, end: 1).animate(animationController);
    animationController.forward();
  }
}
