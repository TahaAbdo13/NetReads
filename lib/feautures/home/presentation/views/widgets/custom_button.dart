import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
            color: Colors.white,
            text: '19.99€',
            onPressed: () {},
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Expanded(
          child: CustomButton(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              color: const Color(0xffEF8262),
              text: 'Free preview',
              onPressed: () {},
              style: Styles.textStyle14
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color color;

  final String text;
  final void Function() onPressed;
  final TextStyle style;
  final BorderRadiusGeometry? borderRadius;
  const CustomButton(
      {super.key,
      required this.color,
      required this.text,
      required this.onPressed,
      required this.style,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12),
              )),
          onPressed: () {},
          child: Text(
            text,
            style: style,
          )),
    );
  }
}
