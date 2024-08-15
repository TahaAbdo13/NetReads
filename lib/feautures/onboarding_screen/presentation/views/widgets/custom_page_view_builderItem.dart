import 'package:bookly/feautures/onboarding_screen/data/models/onboardering_iem_model.dart';
import 'package:bookly/feautures/onboarding_screen/presentation/views/widgets/custom_on_boadering_screen_image.dart';
import 'package:bookly/feautures/onboarding_screen/presentation/views/widgets/text_section.dart';
import 'package:flutter/material.dart';

class CustomPageViewBuilderItem extends StatelessWidget {
  final Onboarderingitemmodel onboarderingitemmodel;

  const CustomPageViewBuilderItem({
    super.key, required this.onboarderingitemmodel,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomOnBoaderingScreenImage(onboarderingitemmodel: onboarderingitemmodel,),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding:const EdgeInsets.symmetric(horizontal: 29.5),
          child: TextSection(onboarderingitemmodel: onboarderingitemmodel,),
        ),
      ],
    );
  }
}
