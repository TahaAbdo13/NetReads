import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomElvatedButtom extends StatelessWidget {
  final bool isLastPage;
  final PageController pageController;
  const CustomElvatedButtom({
    super.key,
    required this.pageController,
    required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (isLastPage) {
          GoRouter.of(context).pushReplacement(AppRouter.homeViewPath);
        } else {
          pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.linear);
        }
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 50,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Text(
        isLastPage ? "Continue" : "Next",
        style: Styles.textStyle18,
      ),
    );
  }
}
