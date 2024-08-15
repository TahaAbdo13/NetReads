import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final PageController pageController;
  final void Function() onPressed;
  final bool isLastPage;

  const CustomTextButton({
    super.key,
    r,
    required this.isLastPage,
    required this.pageController,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(foregroundColor: Colors.white),
      child: Text(
        isLastPage == true ? "Skip to Home Page" : "Back to Start",
        style: Styles.textStyle16,
      ),
    );
  }
}
