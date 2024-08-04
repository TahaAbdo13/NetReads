import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: AlignmentDirectional.center,
          padding:
              const EdgeInsets.only(bottom: 10, top: 14, left: 45, right: 54),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12))),
          child: Text(
            "19.99€",
            style: Styles.textStyle18
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Container(
          alignment: AlignmentDirectional.center,
          padding:
              const EdgeInsets.only(bottom: 14, top: 13, right: 28, left: 31),
          decoration: const BoxDecoration(
              color: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12))),
          child: Text(
            "Free preview",
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
