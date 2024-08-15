import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feautures/onboarding_screen/data/models/onboardering_iem_model.dart';
import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
    final Onboarderingitemmodel onboarderingitemmodel;
  const TextSection({
    super.key, required this.onboarderingitemmodel,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          onboarderingitemmodel.title,
          style: Styles.textStyle28,
          textAlign: TextAlign.center,
        ),
        Text(
         onboarderingitemmodel.subTitle,
          style: Styles.textStyle14,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
