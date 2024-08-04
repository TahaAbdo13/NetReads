import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: CustomButton(
            color: Colors.white,
            topLeft: 12,
            bottomLeft: 12,
            topRight: 0,
            bottomRight: 0,
            textColor: Colors.black,
            text: '19.99€', onPressed: () {  },
          ),
        ),
        Expanded(
          child: CustomButton(
            color: const Color(0xffEF8262),
            topLeft: 0,
            bottomLeft: 0,
            topRight: 12,
            bottomRight: 12,
            textColor: Colors.white,
            text: 'Free preview', onPressed: () {  },
          ),
        )
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final double topLeft, bottomLeft, topRight, bottomRight;
  final Color color;
  final Color textColor;
  final String text;
  final void Function() onPressed;
  const CustomButton({
    super.key,
    required this.topLeft,
    required this.bottomLeft,
    required this.topRight,
    required this.bottomRight,
    required this.color,
    required this.textColor,
    required this.text, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeft),
                  bottomLeft: Radius.circular(bottomLeft),
                  topRight: Radius.circular(topRight),
                  bottomRight: Radius.circular(bottomRight),
                ),
              )),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle16
                .copyWith(color: textColor, fontWeight: FontWeight.bold),
          )),
    );
  }
}
