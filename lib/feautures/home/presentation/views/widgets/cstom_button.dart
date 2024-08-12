import 'package:flutter/material.dart';

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
          onPressed: onPressed,
          child: Text(
            text,
            style: style,
          )),
    );
  }
}
